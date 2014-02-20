set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Gist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mattn/webapi-vim'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-markdown'
Bundle 'fxn/vim-monochrome'

syntax on
set number

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

"display trailing whitespace
set listchars=trail:.
set list
