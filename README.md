Mac OS X Dev Environment
========================
by Marc Leglise (mleglise@gmail.com)

Dot-file Installation
=====================

1. Clone this git repository to your local computer.  
    `cd ~/Documents`  
    `git clone git://github.com/mleglise/dotfiles-public.git`

2. Run the install script to create symlinks in your home folder, that point to these files.  
  `cd dotfiles-public`  
  `ruby install.rb`

3. Reload your Terminal (open a new window) to activate the changes


Ruby Installation
=================

1. Install the dotfiles as described above

2. Install XCode from the Mac App Store

3. Install RVM (https://rvm.beginrescueend.com/)  
    `bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)`

4. Reload your Terminal (open a new window)

5. Test that RVM works  
    `type rvm | head -1`  
    Should output: "rvm is a function"  
    `which rvm`  
    Should output: "/Users/username/.rvm/bin/rvm"

6. Install Ruby 1.9  
    `rvm install 1.9.2`  
    `rvm use 1.9.2`

