# Introduction
The purpose of this file is to record the steps and procedure that I took for creating a custom Linux using Linux from Scratch tutorial. This file shows the modifications made to the host linux (Ubuntu 16.04LTS)

## Notes
These notes are something new I learnt along the way of installing the linux. It may be new concept, keywords, commands or even new language syntax

### Shell Redirection
It started with this command `bzip2 --version 2>&1 </dev/null`
For detailed description of the redirection operator, refer:[https://askubuntu.com/questions/514748/what-does-dev-null-mean-in-a-shell-script] 2nd answer
`cat /dev/null > <file_name>` Normally the above command doesnt work in _bash_ or _csh_
`>| <file_name>` In _bash_ this command removes the contents of the file
`cat /dev/null >| <file_name>` in _csh_ or _zsh_
For detailed description of
`2>&1` refer:[https://stackoverflow.com/questions/10508843/what-is-dev-null-21] 3rd answer.
It says that redirect the STDERR output to STDIN output.   

## Issues

-> Changed the default shell that _/bin/sh_ is pointing from **dash** to **bash**. For that purpose run,
`sudo rm /bin/sh`
`sudo ln -s /bin/bash /bin/sh`

-> install Bison 2.3; M4 library and Bison is downloaded, compiled and installed using the instructions given in the following link
refer :[ https://geeksww.com/tutorials/miscellaneous/bison_gnu_parser_generator/installation/installing_bison_gnu_parser_generator_ubuntu_linux.php]

**Problem:** Bison 2.3 is installed but the command line is not recognizing the "bison" command. After bison 3.0 is installed using `sudo apt-get install bison`; command line is recognizing the "bison" command;
**Temperory Work Around** Will continue with the Bison 3.0 version

## Commands 

# head 
output the first part of files 
-n -- option for line numbers 

# cut 
remove the selections from each line of files 
-d -- delimator which seperates
-f -- compulsory after -d option; tells how words to extract

# readlink
prints resolved symbolic links
-f -- prints the full path of the link

# Conditional Tests
man test
-h -- check if the file exists is a symbolic link
-x -- check if the file exists and execute permission is granted

## Components
# Binutils 
collection of binary tools for handling object files. Used for compilation Important ones are 
ld - GNU linker
as - GNU assembler
strings - list of printable strings from file
TODO - what are strings? 

# Bison
GNU version of YACC (yet another compiler compiler)
TODO: need to know the difference between this GCC and GXX

# Bzip2
contains programs from compressing and decompressing 
uses something called block sorting file compressor

# Coreutils
contains programs for manipulating permissions, ownerships etc; Important ones are 
chmod
chown
TODO: need to know what other tools apart from those mentionend above

# Diffutils
for diffing the files, folders and directories 
TODO: need to know what patches are and how diff is useful in this  
TODO: need to know what other tools apart from diff

# Findutils 
finding files in the system
TODO: need to know what other tools apart from find

# Gawk 
manipulating text files. GNU version of awk (Aho-Weinberg-Kernighan)
TODO: Need to know the proper use case of this with example

# GCC and G++
GNU Compiler Collection. Contains for both C and C++

# Glibc
GNU C libraries. Linux programs wont run without it. ldd 

# Grep
searching through files 
TODO: need to know what other tools apart from grep

# Gunzip
contains programs from compressing and decompressing 

# M4
general text macro processor. useful as a build tool for other programs 

# Patch 
apply a diff file to an original. modifies or creates files by applying _patch_ created by diff program.
TODO: how is diff helping in creating a patch

# Perl 
PERL interpreter 
TODO: what is PERL used for? 

# Sed
allows editing of text without opening files. typical usage is for replacing the files. 

# TAR
archiving and extracting for virtually all packages. 

# Texinfo
reading, writing and converting info pages. 
TODO: makeinfo is the command. why? How is it different from tex?

# XZ Utils 
programs for compressing and decompressing files. said to provide highest form of compression XZ or LZMA format
TODO: difference between this and gunzip and bzip

## Version mismatches in personal lappy
**Component**	**Req Version**	**Curr Version**
Binutils	2.17		2.26
Bison 		2.3		3.0.4
Bzip2		1.0.6		1.0.4
Coreutils	8.25		6.9
Diffutitls	2.8.1		3.3
Findutils	4.2.31		4.7.0 
Gawk		4.0.1		4.1.3
GCC 		4.7		5.4.0
G++		4.7		5.4.0
Glibc		2.11		2.33
Grep 		2.5.1		2.25
Gzip		1.3.12		1.6
Linux Kernel	3.2		4.8.0
M4		1.4.10		1.4.17
Make 		3.81		4.1
Patch		2.5.4		2.7.5
Perl 		5.8.8		5.22.1
Sed		4.1.5		4.2.2
Tar		1.22		1.28
Texinfo		4.7		6.1
Xz		5.0.0		5.1.0
