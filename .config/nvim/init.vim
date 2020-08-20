call plug#begin()

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'clojure-vim/vim-jack-in'
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_root_markers = ['deps.edn']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plug 'mrk21/yaml-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'radenling/vim-dispatch-neovim'
Plug 'romainl/Apprentice'
Plug 'terryma/vim-expand-region'
map <M-Down> <Plug>(expand_region_shrink)
map <M-Up> <Plug>(expand_region_expand)

Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'vim-airline/vim-airline'

call plug#end()

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

colorscheme apprentice

let mapleader = ','
let maplocalleader = ','

set number
set mouse=a
set termguicolors
