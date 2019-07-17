# Dontfiles

## How to setup

1. Install Homebrew
```bash
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

2. Install packages:
```bash
$ brew cask install adoptopenjdk11 firefox jetbrains-toolbox karabiner-elements keybase
```

```bash
$ brew install clojure fish git neovim the_silver_searcher
```

3. For a completely new setup:
```bash
$ git init --bare ~/dontfiles
$ alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
```

4. For a new machine:
```bash
$ git clone --bare git@github.com:tomekw/dontfiles.git ~/dontfiles
```

Also see: http://www.gmarik.info/blog/2010/tracking-dotfiles-with-git

## How to use / some commands
```bash
$ dfgit st
$ dfgit ci -am "New change"
$ dfgit push origin master
$ dfgit pull
```
