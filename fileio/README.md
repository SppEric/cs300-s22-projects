Project 3: Caching I/O
======================

## Design Overview:
The implementation specific variables that I decided to use were a variable to track the file size, the index of the read/write head for the file and cache, a flag for whether the cache was altered or not (so that the program knows whether to write when flushing or not), and a flag for whether the cache is empty so the program knows whether to read into the cache or not.

## Collaborators:
Austin Funk

## Conceptual Questions:
1. Come up with a real world analogy to explain caching to someone who does not know what a computer is. 

Let's say I have two places where I store my clothes, a wardrobe and a box. Every time I move, all my clothes start out in my box, but day by day, as I wear my clothes, I put the ones that I wore that day into my wardrobe instead of back into my box. This thus makes it easier to access the clothes that I had most recently wore and is beneficial to me, since if I chose to wear those clothes out of all my other ones, I will most likely want to wear them again some time soon because I like how they look.

2. What are the benefits of having a standard file I/O API provided by the operating system? How does this help programmers who might not know what hardware their programs will be running on?

A standard file I/O API is extremely beneficial because by having one, programs can make read and write requests to the operating system no matter what program they are, and they will know what to expect from these calls as documented by the API. This means that a programmer does not have to know how the I/O API is talking with the hardware, allowing them to code a general program which will work with any hardware that uses the same I/O API!

3. Read about the catchphrase “Everything is a file” that is central to the design of UNIX-like operating systems (e.g., Linux, macOS, Android). Why might this complicate caching I/O?

This might complicate caching I/O because if everything can be passed in and out like a file (i.e. a file descriptor with a stream of bytes), then the caching program must handle a wide variety of cases at the same time. The sheer amount of input/output resources that the cache needs to handle and direct will make it challenging to manage everything efficiently, and the range of resources will mean that all different types of edge cases (like the NULL byte or 0xFF) will need to be handled.

## How long did it take to complete Caching I/O?
30 hours