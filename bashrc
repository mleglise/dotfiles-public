# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# Use Textmate for editing
export EDITOR=mate

# If this is an xterm, set up Marc's custom prompt:
# [user@host] (date) rvm
# [!history] pwd$
case "$TERM" in
xterm*|rxvt*)
	PS1="\n\[\e[1;32m\]\`if [[ \$? = "0" ]]; then echo "\\[\\e[32m\\]"; else echo "\\[\\e[31m\\]"; fi\`[\u@\h] \[\e[34m\](\d \t) \$(~/.rvm/bin/rvm-prompt) \n\[\e[0;33m\][!\!] \[\e[1;36m\]\w\[\e[m\]\$ "
	;;
*)
	;;
esac

# ALIASES
alias be='bundle exec'
alias bitch='sudo'

# Enable color support of ls
if [ "$TERM" != "dumb" ]; then
	alias ls='ls -G'
	alias ll='ls -la'
fi

# Custom Path modifications

# MySQL
export PATH=/usr/local/mysql/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# NodeJS
export NODE_PATH=/usr/local/lib/node:$NODE_PATH

# OS X 10.7 Lion
# Set the compiler to GCC (instead of default LLVM) for RVM
	# For Lion, Rubies should be built using gcc rather than llvm-gcc. Since
    # /usr/bin/gcc is now linked to /usr/bin/llvm-gcc-4.2, add the following to
    # your shell's start-up file: export CC=gcc-4.2
    # (The situation with LLVM and Ruby may improve. This is as of 07-23-2011.)
export CC=gcc-4.2
