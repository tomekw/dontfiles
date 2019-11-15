call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'kien/ctrlp.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'romainl/Apprentice'

Plug 'bhurlow/vim-parinfer'

Plug 'Olical/conjure', { 'tag': 'v2.1.1', 'do': 'bin/compile' }

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'vim-airline/vim-airline'

Plug 'mustache/vim-mustache-handlebars'

Plug 'mrk21/yaml-vim'

call plug#end()

set number
set mouse=a
set termguicolors

autocmd FileType html setlocal expandtab sw=4 sts=4
autocmd FileType html.handlebars setlocal expandtab sw=4 sts=4

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

let mapleader = ','
let maplocalleader = ','

map <leader>o :CtrlP<CR>
map <leader>r :CtrlPMixed<CR>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

colorscheme apprentice
