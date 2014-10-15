set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nocompatible              " be iMproved, required

match ErrorMsg '\%>80v.\+'    " highlight lines longer than 80

syntax on               " enable syntax
filetype plugin indent on             " Automatically detect file types.
set nonumber
set ruler

highlight CursorLine cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=233 ctermfg=NONE guibg=#121212 guifg=NONE
set cursorline cursorcolumn

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'gnupg'
Plugin 'python.vim'

Bundle 'git.zip'

Bundle 'Markdown'
Bundle 'TWiki-Syntax'

" All Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
