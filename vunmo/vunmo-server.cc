#include "vunmo-server.hh"

#include <iostream>
#include <string>

#include "ssl_hash.hh"

int Server::get_account(uint64_t id, account_t** account) {
  // Lock unordered map containing the accounts
  this->accounts_mtx.lock();

  // Return an error if the account is not found
  std::unordered_map<uint64_t, account_t*>::const_iterator account_iterator = this->accounts.find(id);
  if (account_iterator == this->accounts.end()) {
    this->accounts_mtx.unlock();
    return -ECLINOTFOUND;
  }

  // Assign the account to be 
  *account = account_iterator->second;
  (*account)->mtx.lock();

  // Unlock the map and return that we were successful!
  this->accounts_mtx.unlock();
  return 0;
}

int Server::get_two_accounts(uint64_t first_id, account_t** first_account,
                             uint64_t second_id, account_t** second_account) {
  // Lock then search the accounts unordered map for the accounts
  this->accounts_mtx.lock();
  std::unordered_map<uint64_t, account_t*>::const_iterator first_iterator = this->accounts.find(first_id);
  std::unordered_map<uint64_t, account_t*>::const_iterator second_iterator = this->accounts.find(second_id);
  
  int status_origin = this->accounts.end() == first_iterator;
  int status_target = this->accounts.end() == second_iterator;
  int self_action = first_iterator == second_iterator;
  // Determine if the accounts were found
  if (status_origin + status_target || self_action) {
    this->accounts_mtx.unlock();
    // Return whether we were correct or not :^)
    return (self_action) ? -ESELFACTION : 
    (status_origin != 0) ? -ECLINOTFOUND : -ETARNOTFOUND;
  }

  // Assign the accounts to the given pointers
  *first_account = first_iterator->second;
  *second_account = second_iterator->second;
  
  // Unlock the map now that we're done with it
  this->accounts_mtx.unlock();

  // Try to lock the account with the smaller id first to prevent deadlocking!
  if (first_id < second_id) {
    (*first_account)->mtx.lock();
    (*second_account)->mtx.lock();
  } else {
    (*second_account)->mtx.lock();
    (*first_account)->mtx.lock();
  }
  
  // Return that we were successful!
  return 0;
}

int Server::process_request(request_t* req) {
  // You can use these variables when invoking helper functions for the steps
  // below.
  account_t* first_account = nullptr;
  account_t* second_account = nullptr;
  response_t resp;
  notification_t target_notification;

  // Prints the request simply for the purpose of logging.
  print_request(req);

  // 1. Find and lock client account(s).
  //      - Check the type of request, and call `get_account` or
  //        `get_two_accounts` depending on the type.
  //      - Error check the return value of `get_account` or `get_two_accounts`,
  //        whichever you called above. If there is error, call
  //        `handle_missing_clients` and return the error value.
  int status;
  bool need_mult_accounts = !(req->type == BALANCE || req->type == DEPOSIT || req->type == WITHDRAWAL);
  if (!need_mult_accounts) {
    status = get_account(req->origin_client_id, &first_account);
  } else {
    status = get_two_accounts(req->origin_client_id, &first_account, req->target_client_id, &second_account);
  }
  
  if (status) {
    handle_missing_clients(status, req);
    return status;
  }

  // 2. Call appropriate request handler.
  //      - Depending on the type of request, call `handle_balance`,
  //        `handle_deposit`, `handle_withdraw`, `handle_pay`, or
  //        `handle_charge`. If the type is unknown (i.e., not any of the
  //        request_type enums), then call `handle_unknown_request`.
  //      - Make sure to check for their return value for error!
  //      - These handlers will fill appropriate messages in the response_t (and
  //        notification_t) you pass in, so you don't have to worry about that
  //        detail :)
  switch (req->type) {
    case BALANCE:
        status = handle_balance(req, first_account, &resp);
        break;
    case DEPOSIT:
        status = handle_deposit(req, first_account, &resp);
        break;
    case WITHDRAWAL:
        status = handle_withdraw(req, first_account, &resp);
        break;
    case PAYMENT:
        status = handle_pay(req, first_account, second_account, &resp, &target_notification);
        break;
    case CHARGE:
        status = handle_charge(req, first_account, second_account, &resp, &target_notification);
        break;
    default:
        status = handle_unknown_request(req, &resp);
        break;
  }

  // 3. Send the response_t to client who issued the request by calling
  // `send_response`.
  send_response(first_account->id, &resp);

  // 4. If necessary, send the notification_t to target client by calling
  // `send_notification`.
  if (status == 0 && need_mult_accounts) {
    send_notification(second_account->id, &target_notification);
  }

  // 5. Unlock client account(s).
  first_account->mtx.unlock();
  if (need_mult_accounts) {
    second_account->mtx.unlock();
  }

  return 0;
}

void Server::receive_requests_loop() {
  printf("Listening for requests...\n");
  // While the server is still running (i.e., `is_stopped` is still false), keep
  // calling `fetch_requests` in a loop to fetch requests from clients. Add them
  // to the server's work queue.
  while (!this->is_stopped.load()) {
    std::vector<request_t*> new_requests = this->fetch_requests();
    if (new_requests.empty()) {continue;}
    for (request_t* req : new_requests) {
      this->work_queue.push(req);
    }
  }
}

void Server::work_loop() {
  // While the server is still running (i.e., `is_stopped` is still false), pop
  // a request off the server's work queue in a loop, and call `process_request`
  // to process the request.
  //      - Note that if `pop` returns true (meaning the queue has been
  //        stopped), simply return.
  //      - Free the request struct with the `delete` keyword since the struct
  //        was heap allocated.
  while (!this->is_stopped.load()) {
    request_t* cur_req;

    if (this->work_queue.pop(&cur_req)) {
      return;
    } else {
      if (cur_req == 0x0) {
        continue;
      }
      process_request(cur_req);
      delete cur_req;
    }
  }
}

void Server::accept_clients_loop() {
  // While the server is still running (i.e., `is_stopped` is still false), do
  // the following steps in a loop:
  while(!this->is_stopped) {
    // 1. Call `accept_client` and get a pointer to client_conn_t (which contains
    //    newly accepted client's connection information).
    client_conn_t* new_client = accept_client();
    if (new_client == 0x0) {
      continue;
    }

    // 2. If we already have the new client's ID in `client_conns` map, it means
    //    that this is a client that is re-connecting with the same ID. Call
    //    `handle_reconnecting_client` to take care of this case, and go back to
    //    the beginning of the loop.
    this->client_conns_mtx.lock();
    std::unordered_map<uint64_t, client_conn_t*>::const_iterator client_iterator = this->client_conns.find(new_client->id);
    if (client_iterator != this->client_conns.end()) {
      this->client_conns_mtx.unlock();
      handle_reconnecting_client(new_client, client_iterator->second);
      continue;
    }

    // 2. Set the `is_connected` field of the the client_conn_t to true, and
    //    insert the client_conn_t into `client_conns` map.
    new_client->is_connected = true;
    this->client_conns.insert({new_client->id, new_client});
    this->client_conns_mtx.unlock();

    // 3. Create a new account_t for the client. Initialize the ID and balance,
    //    and insert it into `accounts` map.
    account_t* new_client_account = new account_t;
    new_client_account->balance = 0;
    new_client_account->id = new_client->id;
    this->accounts_mtx.lock();
    this->accounts.insert({new_client->id, new_client_account});
    this->accounts_mtx.unlock();
  }
}

int Server::start(int port, int n_workers) {
  // 1. Set the server's `is_stopped` field to false.
  this->is_stopped.store(false);

  // 2. Call `open_listen_socket` to open a listener socket. Make sure the
  //    socket descriptor returned is not -1, and store it in the server's
  //    `listener_fd` field. 
  this->listener_fd = open_listen_socket(port);
  if (this->listener_fd == -1) {
    return -1;
  }

  // 3. Make sure that n_workers is greater than 0, and store n_workers in the
  //    server's `num_workers`, and set its `workers` vector to be a vector of
  //    that size.
  //    You can call vector's resize function, or create a new vector of that
  //    size to do this.
  if (n_workers < 0) {
    return -1;
  }
  this->num_workers = n_workers;
  this->workers.resize(n_workers);

  // 4. Create a pool of workers by spawning `num_workers` number of threads,
  //    each running the `work_loop` function. Store the worker threads in the
  //    `workers` vector. These threads will be joined in `stop()`.
  for (int i = 0; i < n_workers; i++) {
    this->workers[i] = std::thread(&Server::work_loop, this);
  }

  // 5. Create a thread that runs `receive_requests_loop` to keep reading
  //    requests from clients.
  //    Store this thread in the server's `request_listener` field. This thread
  //    will be joined in `stop()`.
  this->request_listener = std::thread(&Server::receive_requests_loop, this);

  // 6. Create a thread that runs `accept_clients_loop` to keep accepting client
  //    connections.
  //    Store this thread in the server's `client_listener` field.
  this->client_listener = std::thread(&Server::accept_clients_loop, this);

  return 0;
}

std::unordered_map<uint64_t, uint64_t> Server::stop() {
  // 1. Set the server's `is_stopped` field to true.
  this->is_stopped = true;

  // 2. Stop the server from accepting further connections. To do so, call the
  //    `shutdown` system call on the server's `listener_fd` socket descriptor;
  //    and pass `SHUT_RDWR` as the second argument, which shuts the socket down
  //    for reading and writing.
  //    Join the `request_listener` thread.
  shutdown(this->listener_fd, SHUT_RDWR);
  this->request_listener.join();

  // 3. Stop the work queue. Flush the content of the queue, and free each
  //    request struct (which was heap-allocated when it was created) with the
  //    `delete` keyword.
  this->work_queue.stop();
  for (auto &request : this->work_queue.flush()) {
    delete(request);
  }

  // 4. Join all workers threads, and join the client listener thread.
  for (auto &t : this->workers) {
    t.join();

  } 
  this->client_listener.join();

  /* NOTE: At this point, server is now in a single-threaded state */

  // Close and delete all client connections.
  printf("closing and deleting all connections...\n");
  this->client_conns_mtx.lock();
  for (auto& entry : this->client_conns) {
    auto client = entry.second;
    if (client->is_connected) {
      close(client->request_fd);
      close(client->notification_fd);
    }
    delete client;
  }
  this->client_conns_mtx.unlock();

  // delete all accounts and store final balances
  std::unordered_map<uint64_t, uint64_t> final_balances;
  this->accounts_mtx.lock();
  printf("deleting accounts...\n");
  for (auto& entry : this->accounts) {
    auto account = entry.second;
    std::pair<uint64_t, uint64_t> balance(account->id, account->balance);
    final_balances.insert(balance);
    delete account;
  }
  this->accounts_mtx.unlock();
  return final_balances;
}

/* ===================================== */
/* === DO NOT MODIFY BELOW THIS LINE === */
/* ===================================== */

int Server::send_response(uint64_t client_id, response_t* resp) {
  this->client_conns_mtx.lock();
  // find client
  auto entry = this->client_conns.find(client_id);
  if (entry == this->client_conns.end()) {
    this->client_conns_mtx.unlock();
    return -ECLINOTFOUND;
  }
  client_conn_t* client = entry->second;
  client->mtx.lock();
  this->client_conns_mtx.unlock();

  // send response
  int bytes = write(client->request_fd, resp, sizeof(response_t));
  // close client connection on error
  if (bytes < (int)sizeof(response_t)) {
    client->is_connected = false;
    close(client->request_fd);
    close(client->notification_fd);
    printf("Client %ld has been disconnected.\n", client_id);
  }
  client->mtx.unlock();
  return 0;
}

int Server::send_notification(uint64_t client_id, notification_t* n) {
  this->client_conns_mtx.lock();
  // find client
  auto entry = this->client_conns.find(client_id);
  if (entry == this->client_conns.end()) {
    this->client_conns_mtx.unlock();
    return -ECLINOTFOUND;
  }
  client_conn_t* client = entry->second;
  client->mtx.lock();
  this->client_conns_mtx.unlock();

  // send notification
  if (client->is_connected) {
    int bytes = write(client->notification_fd, n, sizeof(notification_t));
    // close client connection on error
    if (bytes < (int)sizeof(notification_t)) {
      client->is_connected = false;
      close(client->request_fd);
      close(client->notification_fd);
      printf("Client %ld has been disconnected.\n", client_id);
    }
  }
  client->mtx.unlock();
  return 0;
}

void Server::handle_missing_clients(int err, request_t* req) {
  account_t* first_account = nullptr;
  response_t resp;

  switch (err) {
    case -ECLINOTFOUND:
      // If origin client is not found, nothing to do
      return;
    case -ETARNOTFOUND:
      sprintf(resp.message, "[ERROR]: target client %ld not found.\n",
              req->target_client_id);
      break;
    case -ESELFACTION:
      sprintf(resp.message, "[ERROR]: target cannot be self [%ld].\n",
              req->target_client_id);
      break;
    default:
      return;
  }
  // Try to lock the origin client's account. If not found, simply return.
  if (get_account(req->origin_client_id, &first_account) < 0) return;
  // Send a response indicating failure to the origin client.
  resp.success = 0;
  this->send_response(first_account->id, &resp);

  // Unlock the origin client.
  first_account->mtx.unlock();
}

client_conn_t* Server::accept_client() {
  while (!this->is_stopped.load()) {
    // accept connection
    int cfd = accept(this->listener_fd, nullptr, nullptr);
    if (cfd < 0 || this->is_stopped.load()) {
      return nullptr;
    }
    // read client hello
    client_hello_t hello;
    server_hello_t pwd_status;

    int bytes_read = read(cfd, &hello, sizeof(client_hello_t));
    if (bytes_read < (int)sizeof(client_hello_t)) {
      fprintf(stderr, "Failed to read client hello.\n");
      continue;
    }

    std::string client_pwd(hello.client_pwd);
    std::string hashed_client_pwd = hash_str(client_pwd, client_pwd.size());

    auto pwd = this->pwds.find(hello.client_id);
    if (pwd == this->pwds.end()) {
      this->pwds.insert(
          std::pair<uint64_t, std::string>(hello.client_id, hashed_client_pwd));
    } else {
      if (pwd->second != hashed_client_pwd) {
        fprintf(stderr, "Incorrect password, failed to connect.\n");
        pwd_status.pwd_status = PWD_REJECTED;
        write(cfd, &pwd_status, sizeof(server_hello_t));
        continue;
      }
    }

    pwd_status.pwd_status = PWD_ACCEPTED;
    write(cfd, &pwd_status, sizeof(server_hello_t));

    auto entry = this->incomplete_conns.find(hello.client_id);
    // if no existing incomplete client connection, create one
    if (entry == this->incomplete_conns.end()) {
      // allocated uninitialized client
      auto* client = new client_conn_t();
      client->request_fd = -1;
      client->notification_fd = -1;
      client->id = hello.client_id;
      // insert into incomplete connections
      std::pair<std::uint64_t, client_conn_t*> new_entry(hello.client_id,
                                                         client);
      this->incomplete_conns.insert(new_entry);
      entry = this->incomplete_conns.find(hello.client_id);
      assert(entry !=
             this->incomplete_conns
                 .end());  // we just inserted it, so it should be there
    }
    client_conn_t* client = entry->second;
    // set correct fd in client
    switch (hello.type) {
      case REQUESTS_HELLO:
        client->request_fd = cfd;
        break;
      case NOTIFICATIONS_HELLO:
        client->notification_fd = cfd;
        break;
      default:
        fprintf(stderr, "Bad hello of type %d.\n", hello.type);
        continue;
    }
    // if client ready, remove from incomplete connections and return it
    if (client->request_fd != -1 && client->notification_fd != -1) {
      this->incomplete_conns.erase(entry);
      return client;
    }
  }
  return nullptr;
}

void Server::handle_reconnecting_client(client_conn_t* new_client,
                                        client_conn_t* existing_client) {
  // reject connection if connected, or update fds otherwise
  existing_client->mtx.lock();
  if (existing_client->is_connected) {
    close(new_client->request_fd);
    close(new_client->notification_fd);
    printf("Client %ld tried to connect but is already connected.\n",
           new_client->id);
  } else {
    existing_client->request_fd = new_client->request_fd;
    existing_client->notification_fd = new_client->notification_fd;
    existing_client->is_connected = true;
    printf("Client %ld has reconnected.\n", new_client->id);
  }
  existing_client->mtx.unlock();

  // free the new_client
  delete new_client;
}

request_t* read_request(client_conn_t* client) {
  auto req = new request_t();
  int bytes_read = read(client->request_fd, req, sizeof(request_t));
  if (bytes_read < (int)sizeof(request_t)) {
    delete req;
    req = nullptr;
    close(client->request_fd);
    close(client->notification_fd);
    client->is_connected = false;
    printf("Client %ld has been disconnected.\n", client->id);
  }
  return req;
}

std::vector<request_t*> Server::fetch_requests() {
  std::vector<request_t*> requests;

  this->client_conns_mtx.lock();

  // collect and lock available clients
  std::vector<client_conn_t*> available_clients;
  for (auto& entry : this->client_conns) {
    auto client = entry.second;
    if (client->mtx.try_lock()) {
      if (client->is_connected) {
        available_clients.push_back(client);
      } else {
        client->mtx.unlock();
      }
    }
  }

  int num_available = available_clients.size();
  if (num_available == 0) {
    this->client_conns_mtx.unlock();
    return requests;
  }

  // prepare poll fds and unlock clients
  struct pollfd poll_fds[num_available];
  for (int i = 0; i < num_available; i++) {
    poll_fds[i].fd = available_clients[i]->request_fd;
    poll_fds[i].events = POLLIN;
    available_clients[i]->mtx.unlock();
  }

  this->client_conns_mtx.unlock();

  // perform poll (this may hang, so clients conns is unlocked)
  if (poll(poll_fds, num_available, 100) <= 0) {
    return requests;
  }

  // filter out clients with nothing to read (iterate backwards)
  for (int i = num_available - 1; i >= 0; i--) {
    if (!(poll_fds[i].revents & POLLIN)) {
      available_clients.erase(available_clients.begin() + i);
    }
  }

  // attempt to read from remaining clients
  request_t* req;
  for (auto& client : available_clients) {
    // skip busy clients
    if (!client->mtx.try_lock()) {
      continue;
    }
    // read and add request
    req = read_request(client);
    if (req != nullptr) {
      requests.push_back(req);
    }
    client->mtx.unlock();
  }

  return requests;
}

void print_request(request_t* req) {
  switch (req->type) {
    case BALANCE:
      printf("[BALANCE] Client %ld\n", req->origin_client_id);
      break;
    case DEPOSIT:
      printf("[DEPOSIT] Client %ld $%ld\n", req->origin_client_id, req->amount);
      break;
    case WITHDRAWAL:
      printf("[WITHDRAWAL] Client %ld $%ld\n", req->origin_client_id,
             req->amount);
      break;
    case PAYMENT:
      printf("[PAYMENT] Client %ld $%ld to target %ld\n", req->origin_client_id,
             req->amount, req->target_client_id);
      break;
    case CHARGE:
      printf("[CHARGE] Client %ld $%ld to target %ld\n", req->origin_client_id,
             req->amount, req->target_client_id);
      break;
  }
}

/* ======================== */
/* === Request Handlers === */
/* ======================== */

int handle_balance(request_t* req, account_t* account, response_t* resp) {
  assert(req->origin_client_id ==
         account->id);  // suppress un-used param warning
  resp->amount = account->balance;
  resp->success = 1;
  sprintf(resp->message, "[BALANCE] Current BALANCE is %ld.\n",
          account->balance);
  return 0;
}

int handle_deposit(request_t* req, account_t* account, response_t* resp) {
  account->balance += req->amount;
  resp->amount = account->balance;
  resp->success = 1;
  sprintf(resp->message, "[DEPOSIT] Deposited %ld. Balance is now %ld.\n",
          req->amount, account->balance);
  return 0;
}

int handle_withdraw(request_t* req, account_t* account, response_t* resp) {
  if (req->amount > account->balance) {
    resp->amount = account->balance;
    resp->success = 0;
    sprintf(resp->message,
            "[WITHDRAW] Failed to WITHDRAWAL %ld from BALANCE of %ld.\n",
            req->amount, account->balance);
    return -1;
  }
  account->balance -= req->amount;
  resp->amount = account->balance;
  resp->success = 1;
  sprintf(resp->message, "[WITHDRAW] Withdrew %ld. Balance is now %ld.\n",
          req->amount, account->balance);
  return 0;
}

int handle_pay(request_t* req, account_t* first_account,
               account_t* second_account, response_t* resp,
               notification_t* notif) {
  // check for insufficient BALANCE
  if (first_account->balance < req->amount) {
    resp->amount = first_account->balance;
    resp->success = 0;
    sprintf(resp->message,
            "[PAY] Insufficient BALANCE (%ld) to PAYMENT %ld to client %ld.\n",
            first_account->balance, req->amount, req->target_client_id);
    return -1;
  }
  // perform payment
  first_account->balance -= req->amount;
  second_account->balance += req->amount;
  resp->amount = first_account->balance;
  resp->success = 1;
  sprintf(resp->message, "[PAY] Payed %ld to client %ld. Balance now %ld.\n",
          req->amount, req->target_client_id, first_account->balance);

  // create payment notification for target client
  notif->type = PAYMENT_NOTIFICATION;
  notif->origin_client_id = first_account->id;
  notif->amount = req->amount;
  sprintf(notif->message, "[PAY] Client %ld paid you %ld. Balance now %ld.\n",
          first_account->id, req->amount, second_account->balance);
  return 0;
}

int handle_charge(request_t* req, account_t* first_account,
                  account_t* second_account, response_t* resp,
                  notification_t* notif) {
  resp->amount = first_account->balance;
  resp->success = 1;
  sprintf(resp->message, "[CHARGE] Requested %ld from client %ld.\n",
          req->amount, second_account->id);

  // create charge notification for target client
  notif->type = CHARGE_REQUEST_NOTIFICATION;
  notif->origin_client_id = first_account->id;
  notif->amount = req->amount;
  sprintf(notif->message, "[CHARGE] Client %ld is requesting %ld.\n",
          first_account->id, req->amount);
  return 0;
}

int handle_unknown_request(request_t* req, response_t* resp) {
  resp->amount = 0;
  resp->success = 0;
  sprintf(resp->message, "[ERROR] Unknown request type %d.\n", req->type);
  return 0;
}
