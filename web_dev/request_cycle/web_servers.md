What are some of the key design philosophies of the Linux operating system?
- Use software leverage. At the center of the Linux philosophy is a concept called Open Source Software. Open Source is a term that applies to software for which the source code--the inner workings of the program--is freely available for anyone to download, modify, and redistribute. One of the great advantages of Open Source software at all levels is that there is an incredibly large amount of well-written and tested source code out there that can do almost anything you want to do. Just find the pieces you need and include them in your own code.
- Make every program a filter
 Each command will take an input, usually from Standard Input, and “filters” the data stream by making some change to it, then sends the resulting data stream to Standard Output. Each following command changes that data stream in some manner, taking the Standard Input and sending the modified data to Standard Output for the next command to manipulate

- Small is beautiful and each program does one thing well. Each of the commands in any Linux program is fairly small, and each performs a specific task. Because it is very small it is also very fast.

- Choose portability over efficiency. The portability of shell scripts can be far more efficient in the long run than the perceived efficiency of writing a program in a compiled language—not even considering the time required to compile and test such a program—because they can run on many otherwise incompatible systems. 

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

VPS is a virtual computer that can run any operating system of your choice and used as regular machine with full access (installing and running any software on it) to that OS. 
There are several advantages that VPS has over the shared server and dedicated server:
Cost and Green technology:  Green hosting and the use of eco-friendly technologies has been gaining a lot of popularity over the past few years. It is important to do your part to make sure your carbon footprint is as little as possible. With a virtual private server, a large dedicated server is sliced or divided into many different virtual environments. This way, many more people shared the resources of that physical server.
Segregation: Each virtual server is segregated from other servers on the same platform and there is no direct effect of one server’s activity and customization over the other server.
Performance: The performance of VPS is noticeably higher than the shared server and little lower than the dedicated server. As it has allocated amount of resources in terms of CPU usage, memory and RAM; virtualization works best for small and medium size website.
Security: Another advantage of this system is its security. As individual servers are separated with each other, each website gets its own operating system and resources. This makes difficult for another server to invade the security.

3.Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

Root is a system administrator user that has a privilege to modify the core system, with almost no exceptions. So even if user requested something by accident, it will be carried out with little or no warning, even if it's bad for the health of system. This is why it's good practice to do most of activities as a normal user, and use root only when needed, like when installing a program.