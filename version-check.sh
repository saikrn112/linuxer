#!/bin/bash
# Simple script to list version numbers of critical development tools
export LC_ALL=C

# Bash 
bash --version | head -n1 | cut -d" " -f2-4
MYSH=$(readlink -f /bin/sh) 
echo "/bin/sh -> $MYSH"
echo $MYSH | grep -q bash || echo "ERROR: /bin/sh does not point to bash"
unset MYSH

# Binutiles 
echo -n "Binutils: "; ld --version | head -n1 | cut -d" " -f3-

# Bison 
bison --version | head -n1
if [ -h /usr/bin/yacc ]; then
echo "/usr/bin/yacc -> `readlink -f /usr/bin/yacc`";
elif [ -x /usr/bin/yacc ]; then
echo yacc is `/usr/bin/yacc --version | head -n1`
else
echo "yacc not found"
fi

# Bzip
bzip2 --version 2>&1 < /dev/null | head -n1 | cut -d" " -f1,6-

# Coreutils
echo -n "Coreutils: "; chown --version | head -n1 | cut -d")" -f2

# Diffutils 
diff --version | head -n1

# Findutils 
find --version | head -n1

# Gawk
gawk --version | head -n1
if [ -h /usr/bin/awk ]; then
echo "/usr/bin/awk -> `readlink -f /usr/bin/awk`";
elif [ -x /usr/bin/awk ]; then
echo awk is `/usr/bin/awk --version | head -n1`
else
echo "awk not found"
fi

# GCC  
gcc --version | head -n1

# G++
g++ --version | head -n1

# Glibc
ldd --version | head -n1 | cut -d" " -f2-  # glibc version

# Grep
grep --version | head -n1

# Gzip
gzip --version | head -n1

# Linux kernel
cat /proc/version

# Marco Processor M4
m4 --version | head -n1

# Make 
make --version | head -n1

# Patch 
patch --version | head -n1

# perl 
echo Perl `perl -V:version`

# Sed 
sed --version | head -n1

# Tar
tar --version | head -n1

# Texinfo
makeinfo --version | head -n1

# XZ Utils 
xz --version | head -n1

# Testing if compilation works 
echo 'int main(){}' > dummy.c && g++ -o dummy dummy.c
if [ -x dummy ]
then echo "g++ compilation OK";
else echo "g++ compilation failed"; fi
rm -f dummy.c dummy
