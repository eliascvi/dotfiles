" Settings
inoremap jk <ESC>
let mapleader = "\<Space>"
filetype plugin indent on
syntax on
set nocompatible
set number
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set encoding=UTF-8

" Text Width ---- gggqG
augroup my_textwidth
au!
autocmd FileType text,markdown,tex setlocal textwidth=80
set formatoptions+=t
augroup END

" Plugins
call plug#begin('~/local/share/nvim/site/autoload/plug.vim')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'honza/vim-snippets'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'steelsojka/pears.nvim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'Chiel92/vim-autoformat'
Plug 'nvim-neorg/neorg' | Plug 'nvim-lua/plenary.nvim'
Plug 'ap/vim-css-color'
Plug 'elvessousa/sobrio'
Plug 'voldikss/vim-floaterm'
Plug 'folke/zen-mode.nvim'
Plug 'folke/twilight.nvim'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mihaifm/bufstop'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/adelarsq/vim-devicons-emoji'

call plug#end()

" Plug Settings
let g:airline#extensions#tabline#enabled = 1
let g:coq_settings = { 'auto_start': 'shut-up' }
nnoremap <C-t> <cmd>CHADopen<cr>
let g:airline_theme='sol'
map <C-b> :Bufstop<CR>             " get a visual on the buffers
