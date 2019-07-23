# Dontfiles

## How to install on a new machine

1. Clone repository
	```bash
	$ git clone --bare git@github.com:tomekw/dontfiles.git ~/dontfiles
	```
1. Pull all changes
	```bash
	$ git --work-tree=$HOME/ --git-dir=$HOME/dontfiles checkout -f master
	```
1. Run the installation script
	```bash
	$ $HOME/bin/dontfiles-install.sh
	```

## How to setup the repository
```bash
$ git init --bare ~/dontfiles
```
See: http://www.gmarik.info/blog/2010/tracking-dotfiles-with-git
