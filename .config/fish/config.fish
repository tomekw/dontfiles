set -gx EDITOR nvim
set -gx PATH ~/bin ~/.emacs.d/bin /usr/local/opt/sqlite/bin /usr/local/opt/node@16/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin
set -gx MOZ_ENABLE_WAYLAND 1

alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
alias vim="nvim"
alias dc="docker-compose"
alias dcr="docker-compose run --rm app"
alias sqlite="sqlite3 --table --nullvalue 'NULL'"
