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
Plugin 'tpope/vim-fugitive'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on

syntax on
set number
set backspace=indent,eol,start
set background=dark
colorscheme solarized

map q] :cn <CR>
map q[ :cN <CR>
map q\ :ccl <CR>
map bn :bn <CR>
map bN :bN <CR>
map <C-n> :NERDTreeToggle<CR>

"vim-go config
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"rust.vim config
let g:rustfmt_autosave = 1

"use *.md for markdown
au BufRead,BufNewFile *.md set filetype=markdown

"tab settings
autocmd FileType html setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType c setlocal shiftwidth=8 tabstop=8 expandtab
autocmd FileType cpp setlocal shiftwidth=8 tabstop=8 expandtab

"display trailing whitespace
set listchars=tab:\ \ ,trail:·
set list
