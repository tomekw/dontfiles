# Dontfiles

## How to setup
```bash
$ git init --bare ~/dontfiles
$ alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
```

Also see: http://www.gmarik.info/blog/2010/tracking-dotfiles-with-git

## How to use
```bash
$ git clone --bare git@github.com:tomekw/dontfiles.git ~/dontfiles
```

## Other commands
```bash
$ dfgit st
$ dfgit ci -am "New change"
$ dfgit push origin master
$ dfgit pull
```
