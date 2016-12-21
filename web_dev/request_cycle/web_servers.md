#What are some of the key design philosophies of the Linux operating system?
* At the center of the Linux philosophy is a concept called Open Source Software.  Open Source refers to source code that is freely available for anyone to download, modify, and redistribute.  It opens up every aspect of development, debugging, testing, and study to anyone with enough interest in doing so.  Rather than relying upon a single corporation to develop and maintain a piece of software, Open Source allows the code to evolve, openly, in a community of developers and users who are motivated by desire to create good software, rather than simply make a profit.
 
* The Linux philosophy follows the Unix, in that it emphasizes building simple, short, clear, modular, and extensible code that can be easily maintained and repurposed by developers other than its creators.
 
* Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new features. Expect the output of every program to become the input to another program. Don’t clutter output with extraneous information. Avoid stringently columnar or binary input formats. Don’t insist on interactive input. Design and build software, even operating systems, to be tried early, ideally within weeks. Don’t hesitate to throw away the clumsy parts and rebuild them. Use tools in preference to unskilled help to lighten the programming task, even if you have to detour to build the tools and expect to throw some of them out after you’ve finished using them. Write programs to work together. Write programs to handle text streams, because that is a universal interface.

* Rule of Modularity: Developers should build a program out of simple parts connected by well defined interfaces, so problems are local, and parts of the program can be replaced in future versions to support new features.
* Rule of Clarity: Write programs as if the most important communication is to the developer, including themselves who will read and maintain the program rather than the computer.  
* Rule of Composition: Write programs that can communicate easily with other programs. 
* Rule of Separation: Separate mechanisms of the programs from the policies of the programs. One method is to divide a program into a front-end interface and a back-end engine with which that interface communicates.
* Rule of Simplicity: Design for simplicity by looking for ways to break up program systems into small, straightfoward cooperating pieces. 
* Rule of Parsimony: Avoid writing big programs. Aim to prevent overinvestment of dev time in failed or suboptimal approaches caused by the owners of the program's reluctance to throw away visibly large pieces of work.
* Rule of Transparency: Design for visibility and discoverability by writing in a way that their thought process can lucidly be seen by future developers working on the project and using input and output formats that make it easy to identify valid input and correct output. 
* Rule of Robustness: Design robust programs by designing for transparency and discoverability, because code that is easy to understand is easier to stress test for unexpected conditions that may not be foreseeable in complex programs. 
* Rule of Representation: Make data more complicated rather than the procedural logic of the program when faced with the choice, because it is easier for humans to understand complex data compared with complex logic. 
* Rule of Least Surprise: Design programs that build on top of the potential user's expected knowledge. + in a calculator should always mean addition.
* Rule of Silence: Design programs so that they do not print unnecessary output. 
* Rule of Repair: Design programs that fail in a manner that is easy to localize and diagnose or in other words, fail noisily
* Rule of Economy: Value developer time over machine time.
* Rule of Generation: Avoid writing code by hand and instead write abstract high-level programs that generate code.
* Rule of Optimization: Prototype software before polishing it. 
* Rule Of Diversity: Design their programs to be flexible and open. 
* Rule of Extensibility: Design for the future by making their protocols extensible, allowing for easy plugins without modification to the program's architecture by other developers.

# What is a Virtual Private Server?
* A virtual machine that runs its own copy of an operating system. Some advantages of VPS are that they are less expensive than a full dedicated hosting plan. They can by customized to meet needs so you pay for what you want and not for features you will never need. They are easily scalable. You can start with the minimum amount of resources you need and then as you grow, you can increase your hosting features. You have root access and the ability to use scripts that many not be allowed in the shared hosting environment. You can have complete control over your VPS account from configurations to software installations. You have the freedom to choose the operating system and software you want to install on the server. 

# Why is it a bad idea to rung programs as the root user on a Linux system?
* If you are logged in as root, you can easily wipe directories or do something that in retrospect is really bad for the system. There is also the issue of root being the most well known, thus an easy target for scripts and hacks. Running as root all the time encourages bad habits and laziness that will make life unpleasant when you are working with multiple users or expose something to a public network. The number one reason for running as non-admin is to limit your exposure. When you are an admin, every program you run has unlimited access to your computer. If malicious or other undesirable code finds its way to one of those programs, it also gains unlimited access. 

#Properties that might be interesting to change once the page is loaded
* Change the zoom of an element when user hovers or clicks on it. 
* Change the layout for easier reading in terms of responsive design. Such as the width and height of an image
* Can animate something when a user clicks or hovers on the element. 
* Transform an element.