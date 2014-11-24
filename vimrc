set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'Gist.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/webapi-vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-markdown'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on

syntax on
set number
set backspace=indent,eol,start

"so I can still use shift+arrows
map OC <Right>
map OD <Left>
map [1;2C <S-Right>
map [1;2D <S-Left>
map OB <Down>
map OA <Up>
map [1;2A <S-Up>
map [1;2B <S-Down>

set background=dark
colorscheme solarized

"use *.md for markdown
au BufRead,BufNewFile *.md set filetype=markdown

"tab settings
autocmd FileType html setlocal shiftwidth=2 tabstop=2

"display trailing whitespace
set listchars=tab:\ \ ,trail:·
set list
