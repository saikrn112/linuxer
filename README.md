# Introduction
The purpose of this file is to record the steps and procedure that I took for creating a custom Linux using Linux from Scratch tutorial. This file shows the modifications made to the host linux (Ubuntu 16.04LTS)

## Notes
These notes are something new I learnt along the way of installing the linux. It may be new concept, keywords, commands or even new language syntax

### Shell Redirection
refer:[https://askubuntu.com/questions/514748/what-does-dev-null-mean-in-a-shell-script] 2nd answer
`cat /dev/null > <file_name>` Normally the above command doesnt work in _bash_ or _csh_
`>| <file_name>` In _bash_ this command removes the contents of the file
`cat /dev/null >| <file_name>` in _csh_ or _zsh_ 

## Links

-> Changed the default shell that _/bin/sh_ is pointing from **dash** to **bash**. For that purpose run,
`sudo rm /bin/sh`
`sudo ln -s /bin/bash /bin/sh`

-> install Bison 2.3; M4 library and Bison is downloaded, compiled and installed using the instructions given in the following link
refer :[ https://geeksww.com/tutorials/miscellaneous/bison_gnu_parser_generator/installation/installing_bison_gnu_parser_generator_ubuntu_linux.php]

**Problem:** Bison 2.3 is installed but the command line is not recognizing the "bison" command. After bison 3.0 is installed using `sudo apt-get install bison`; command line is recognizing the "bison" command;
**Temperory Work Around** Will continue with the Bison 3.0 version
