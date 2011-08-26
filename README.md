# Mac OS X Dev Environment #
by Marc Leglise (mleglise@gmail.com)

## Prerequisites ##

* Install XCode.
* Use Terminal to run the commands below. (or iTerm or equivalent)

# Dot-file Installation #

* Clone this git repository to your local computer.

```
cd ~/Documents  
git clone git://github.com/mleglise/dotfiles-public.git
```

* Run the install script to create symlinks in your home folder, that point to these files.

```
cd dotfiles-public  
ruby install.rb
```

* Reload your Terminal (open a new window) to activate the changes.

* Now if you want to make changes, just edit the files in `~/Documents/dotfiles-public`


Ruby Installation
=================

* Install the dotfiles as described above

* Install [RVM](https://rvm.beginrescueend.com/)

```
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)
```

* Reload your Terminal (open a new window)

* Test that RVM works  

> `type rvm | head -1`  
> Should output: "rvm is a function"  
> `which rvm`  
> Should output: "/Users/username/.rvm/bin/rvm"

* Install Ruby 1.9

```
rvm install 1.9.2  
rvm use 1.9.2 --default
```

Extra Tools
===========

Good things to install for developing on a Mac.

## [Homebrew](http://mxcl.github.com/homebrew/) ##

For installing UNIX tools Apple doesn't include by default.
[installation instructions](https://github.com/mxcl/homebrew/wiki/installation)

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
```


## Configure Git ##

* [Generate your SSH keys](http://help.github.com/mac-set-up-git/)

* Configure git for your specific account.

```
git config --global user.name "Marc Leglise"  
git config --global user.email "mleglise@gmail.com"
```

* If you have a GitHub account, set that configuration too.

```
git config --global github.user mleglise  
git config --global github.token 01234my5678token
```
