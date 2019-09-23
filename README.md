# linux4coder

Linux without GUI for learning programming

## Description

linux4coder is a virtual machine with installed GNU/Linux. It includes common software (file manager, task manager, browser etc.) and development software

Linux is the good way to learn programming

That's why:

* has variety of tools for programming (compilers, interpreters, analyzers, debuggers, test libraries etc.)

* supports different languages

* lightweight

* modifiable, free and open

* has powerful terminal

## Requirements

* `VirtualBox` virtual machine

* `VirtualBox Extension Pack` for USB support and other additional functions

## Installation and Run

read [linux4coder-install-and-run.pdf](linux4coder-install-and-run.pdf)

## Included software

* OS Ubuntu Linux 4.15.0-64

* Analyzer Valgrind 3.13.0

* ASM compiler nasm 2.13.02

* Browser w3m 0.5.3

* Build tool automake 1.15.1

* Build tool cmake 3.10.2

* Build tool make 4.1

* C/C++ compiler GCC 7.4.0

* C/C++ compiler Clang 6.0

* Data exchange utility curl 7.58.0

* Debugger GDB 8.1.0

* File manager MC 4.8.19

* Guest extensions VirtualBox 6.0.12

* Interpreter Python 2 7.15

* Interpreter Python 3 3.6.8

* JRE & JDK OpenJDK 11.0.3

* Library OpenMPI 2.1.1-8

* Multitasking in terminal screen 4.06.02

* Network utilities net-tools 1.60

* PGP key tool gnupg2 2.2.4

* Task manager htop 2.1.0

* Test framework CUnit 2.1-3

* Test framework Google Test 1.8.0-6

* Text editor nano 2.9.3

* Text editor vim 8.0

* Translator markdown 1.0.1

* VCS git 2.17.1


## Initialization and updating workplace

After successful installation and run `linux4coder` you should initialize your workplace:

* run `./update.sh` script from your home directory

* run `ls` after initialization, you'll see such directories and files:

    * **examples**

    * **help**

    * **tasks**

    * **tools**

    * **update.sh**
    
    * **linux4coder-install-and-run.pdf**

* run `mkdir projects` to create **projects** directory for locating your work there

* run `./update.sh` script to update your workplace with new stuff

*It's not recommended to create and modify any directories or files outside your **projects** directory*
