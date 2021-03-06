set -gx EDITOR nvim
set -gx PATH ~/.local/share/tresorit /usr/local/bin /usr/bin /bin
set -gx MOZ_ENABLE_WAYLAND 1

alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
alias vim="nvim"
alias dc="docker-compose"
alias dcr="docker-compose run --rm app"
