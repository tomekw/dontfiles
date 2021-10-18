call plug#begin()

Plug 'airblade/vim-gitgutter'
Plug 'axelf4/vim-strip-trailing-whitespace'
Plug 'clojure-vim/async-clj-omni'
Plug 'clojure-vim/vim-jack-in'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dense-analysis/ale'
Plug 'guns/vim-clojure-highlight'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-sexp'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'luochen1990/rainbow'
Plug 'mileszs/ack.vim'
Plug 'mrk21/yaml-vim'
" Plug 'Olical/conjure'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
Plug 'preservim/nerdtree'
Plug 'mustache/vim-mustache-handlebars'
Plug 'radenling/vim-dispatch-neovim'
Plug 'romainl/Apprentice'
Plug 'SevereOverfl0w/vim-replant', { 'do': ':UpdateRemotePlugins' }
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'venantius/vim-cljfmt'
Plug 'vim-airline/vim-airline'

call plug#end()

" ack.vim
let g:ackprg = 'rg --vimgrep'
let g:ack_autoclose = 1
cnoreabbrev Ack Ack!

" ale
let g:ale_linters = {'clojure': ['clj-kondo']}

" asyncomplete.vim + async-clj-omni
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'async_clj_omni',
    \ 'whitelist': ['clojure'],
    \ 'completor': function('async_clj_omni#sources#complete'),
    \ })
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

let g:asyncomplete_auto_popup = 0

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ asyncomplete#force_refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" conjure
" let g:conjure#eval#gsubs = {'do-comment': ['^%(comment[%s%c]', '(do ']}

" ctrlp.vim
let g:ctrlp_root_markers = ['deps.edn']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" rainbow
let g:rainbow_active = 1

" vim-expand-region
map <M-Down> <Plug>(expand_region_shrink)
map <M-Up> <Plug>(expand_region_expand)

" vim-fugitive
cnoreabbrev gbr Git branch
cnoreabbrev gci Git commit
cnoreabbrev gco Git checkout
cnoreabbrev gdi Git diff
cnoreabbrev glg Git log -p
cnoreabbrev gst Git status

" vim-gitgutter
set updatetime=100

" vim-numbertoggle
set number relativenumber

colorscheme apprentice

let mapleader = ','
let maplocalleader = ','

set mouse=a
set termguicolors

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set clipboard=unnamedplus
