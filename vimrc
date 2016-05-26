set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nonumber
set ruler

" vim Modelines
set modeline
set modelines=5

syntax on                     " enable syntax
" Crosshairs
highlight CursorLine cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
set cursorline cursorcolumn

set nocompatible              " be iMproved, required
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'git.zip'
Plugin 'gmarik/Vundle.vim'
Plugin 'gnupg'
Plugin 'Markdown'
Plugin 'saltstack/salt-vim'
Plugin 'tpope/vim-fugitive'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'Rykka/riv.vim'

" Bundle 'klen/python-mode'
" Plugin 'python.vim'

" All Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NERDtree setup
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Python-mode setup
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 89
let g:pymode_folding = 0
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all


