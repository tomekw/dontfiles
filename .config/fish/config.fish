set -gx EDITOR nvim
set -gx PATH ~/bin ~/.emacs.d/bin /usr/local/opt/sqlite/bin /usr/lib/psql14/bin /usr/local/bin /usr/bin /bin /usr/sbin /sbin
set -gx MOZ_ENABLE_WAYLAND 1

source ~/.asdf/asdf.fish

alias dfgit="git --work-tree=$HOME/ --git-dir=$HOME/dontfiles"
alias vim="nvim"
alias dc="docker-compose"
alias dcr="docker-compose run --rm app"
alias sqlite="sqlite3 --table --nullvalue 'NULL'"
