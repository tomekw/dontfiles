# Dontfiles

## How to setup

1. Install Homebrew
	```bash
	$ xcode-select --install
	$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```

1. Install vim-plug
	```bash
	$ curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	```

1. For a completely new setup
	```bash
	$ git init --bare ~/dontfiles
	$ alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
	```

1. For a new machine
	```bash
	$ git clone --bare git@github.com:tomekw/dontfiles.git ~/dontfiles
	```

1. Install packages
	```bash
	$ brew bundle install
	```

Also see: http://www.gmarik.info/blog/2010/tracking-dotfiles-with-git

## How to use / some commands
```bash
$ dfgit st
$ dfgit ci -am "New change"
$ dfgit push origin master
$ dfgit pull
```
