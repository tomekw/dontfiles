call plug#begin()

Plug 'tpope/vim-sensible'

Plug 'kien/ctrlp.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'romainl/Apprentice'

Plug 'bhurlow/vim-parinfer'

Plug 'Olical/conjure', { 'tag': 'v0.22.0', 'do': 'bin/compile' }

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'vim-airline/vim-airline'

Plug 'mustache/vim-mustache-handlebars'

call plug#end()

set number
set mouse=a
set termguicolors

autocmd FileType html setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType html.handlebars setlocal expandtab shiftwidth=4 softtabstop=4

let mapleader = ','
let maplocalleader = ','

map <leader>o :CtrlP<CR>
map <leader>r :CtrlPMixed<CR>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

colorscheme apprentice
