set -Ux EDITOR nvim
set -Ux GRAALVM_HOME /Library/Java/JavaVirtualMachines/graalvm-ce-19.2.0.1/Contents/Home
set -Ux  PATH /usr/local/opt/node@10/bin /usr/local/sbin /usr/local/bin $PATH
set -Ux MOZ_ENABLE_WAYLAND 1

alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
alias vim="nvim"
alias dc="docker-compose"
alias dcr="docker-compose run --rm app"
set -g fish_user_paths "/usr/local/opt/node@12/bin" $fish_user_paths
