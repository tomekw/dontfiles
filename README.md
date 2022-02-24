# Dontfiles

## How to install on a new machine

1. Install Homebrew
	```bash
	$ xcode-select --install
	$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	```
1. Install git
	```bash
	$ brew install git
	```
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
  	$ $HOME/bin/macos.sh
  	$ $HOME/bin/debian.sh
	$ $HOME/bin/void.sh
	```

## Additional steps

1. Add Buster repo to install Slack
  ```bash
  deb http://deb.debian.org/debian/ buster main
  ```

1. Add Docker repo
  ```bash
  $ curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
  ```

  ```bash
  deb https://download.docker.com/linux/debian buster stable
  ```

## Usage

Use `dfgit` as `git`.

## How to setup the repository

```bash
$ git init --bare ~/dontfiles
```

See: http://www.gmarik.info/blog/2010/tracking-dotfiles-with-git
