Project 5 - Vunmo
====================

## Design Overview:

N/A

## Collaborators:
Austin Funk

## Conceptual Questions:
1. Discuss the tradeoffs between spawning a thread per request versus using a worker pool consisting of a fixed number of threads. Consider how performance will vary as the number of users increases.

Spawning a thread per request will work really well for when the amount of users is small, since it means there will be very little memory waste due to no threads idling while being able to handle each request as soon as it comes; however, this is where the benefits of the per request model ends, as using a worker pool of a fixed number of threads has many more benefits for a distributed system, especially for large ones. When the number of users grows too high, a thread per request model will begin to severely slow down for everyone since there's an optimal amount of threads a processor can handle. Additionally, by spawning too many threads, memory usage will sky rocket through the roof due to the need to copy the stack every single time. By having a worker pool with a fixed number of threads, user requests will be handled as they arrive very efficiently, with each thread in the pool getting an equal amount of uptime in situations where requests flood the system, and when there are no requests to be handled the workers will simply idle.

2. A popular online food ordering service, PackSnass, includes a feature which allows users to collect rewards and share them with their friends. The PackSnass infrastructure contains the user_t struct (to store user data) and send_rewards function (to transfer rewards) listed below:

haha code

The PackSnass servers have multiple worker threads, so user requests can be executed in parallel. As such, what might go wrong if two users, Alice and Zachary simultaneously attempt to send each other rewards? How might you change send_rewards to fix this problem?

One potential problem that might occur is a deadlock between Alice's and Zachary's threads! If they both try to send each other rewards at the same time, then a potentially terrible situation is that Alice's thread locks her mutex while Zachary's thread locks his, meaning both are waiting for the other thread to unlock leading to neither one actually able to unlock in the end. One potential way to fix this is to force some kind of structure upon what order threads manage the request, an easy way being to change the function to choose to lock the user with the smaller id first. This would ensure that both threads would follow the same locking path, thus preventing one from locking out the other and creating a deadlock!


SRC Questions:

1. Where could a supply-chain attack have occurred in Vunmo? It might help to think about what external functions or libraries you needed to use! (If you have access to the source-code, it might be worth looking at it.)

Based on the include statements used across the project, the most likely place where a supply-chain attack could have happened would be from ssl_hash, specifically from the OpenSSL library which we used to encode our passwords. This makes sense then that all account information was stolen, along with their balances, since having the hashing algorithm hacked would allow full access to every account in our banking service!

2. Was the developer justified in his actions? Why or why not?

I think that the situation could have been handled a bit better, as what the developer did felt kind of immature and was probably not the best way to convince companies to hire him. However, it did attract a lot of attention, and I think he was justified in demanding more for his repositories which had up to millions of downloads. While he did create them for free initially, once it was downloaded this much and probably in commercial use, open source software developers should be given the opportunity to be reimbursed for their efforts if what they created is something that could earn them a six-figure salary.

3. How do you think we can make open source sustainable?

Some aspects to consider:
    Who do you think should be responsible for funding open source projects? Should anyone?

    Besides the most crucial software directly relevant to their codebases, it’s unlikely for companies to provide funding for open source software. Should companies be obligated to financially support open source projects they use?

    Do OSS contributors deserve to be compensated for their work?

This is an issue that many people have been working towards and none have come up with a solid solution. There have been steps made in the right direction, like GitHub Sponsors allowing businesses to very easily spend funds to support open source developers that they depend on or websites like bountysource.com attempting to crerate a centralized platform for funding work on open-source projects. However, none of these steps are enough to fully combat the problem, both for the same reason: there isn't enough incentive to fund open source projects. Therefore, one idea I have is to almost unionize open source software for commercial entities, requiring them to pay a subscription to use any software in the collective. If this fee isn't paid, then the company gets no access to any of the projects. This would mainly benefit software that's being used the most, but I believe those are the ones that most deserve to be compensated for their work, and I think that it's up to the companies that use them to pay for the work that the developers have put in for so long. I don't think that this fee should be charged for hobbyists nor smaller software developers since those are the people who are creating open source software in the first place. With companies funding the larger open source projects, the smaller ones will then be able to receive the money that was being directed toward maintaining those larger projects, and, since these would be smaller projects, they wouldn't need as much funding. Funding every open source project is impossible, so I believe that this will be able to provide money to projects that require it most from the customers who are benefiting the most.

## Extra Credit attempted:

1. Consider the design of the Vunmo service, and your implementation. What types of usage patterns (e.g., transfer patterns between users) are likely to scale well to many threads, and which will scale poorly?

One of the main worries with this usage pattern in terms of scalability is when multiple threads are attempting to access a single user. For example, if the user is an online store that uses Vunmo to charge its users, if multiple users are attempting to buy an item from the same store, then the work pool will be filled with requests for all possible threads to pay the store; however, the store will have it's mutex locked because payments require a write call, creating potential race conditions if there wasn't a guard in place. This bottlenecks the transactions immensely to just a single thread able to make payment requests and the rest idling, essentially not allowing other users to do anything as the threads wait for the other requests to be fulfilled in a single-threaded manner. Thus, it follows that usage patterns with multiple different users paying other unrelated users will scale extremely well with our implementation since it allows the threads to execute concurrently. This makes sense, since this is mainly how Venmo was intended to be used, as a platform for sporadic transactions between peers and not for handling continuous requests to a centralized account.

## How long did it take to complete Vunmo?

20 hours