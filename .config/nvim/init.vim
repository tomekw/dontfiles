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

call plug#end()

set number
set mouse=a

let mapleader = ','
let maplocalleader = ','

map <leader>o :CtrlP<CR>
map <leader>r :CtrlPMixed<CR>

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

colorscheme apprentice
