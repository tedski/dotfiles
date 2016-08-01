set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set nonumber
set ruler

set modeline
set modelines=5
syntax on

" Crosshairs
highlight CursorLine cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
set cursorline cursorcolumn

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'gnupg'
Plugin 'Markdown'
Plugin 'saltstack/salt-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All Plugins must be added before the following line
call vundle#end()             " required
filetype plugin indent on     " required

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" NERDtree setup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeQuitOnOpen = 1
