let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'mikewest/vimroom'

filetype plugin indent on

syntax on

let mapleader = ";"
let g:solarized_termcolors=256

set background=dark
colorscheme solarized
set backspace=2             " Fix backspace to not be stupid
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab


inoremap <leader>s <ESC>:w<CR>         " Save and drop out of insert mode
inoremap <leader>S <C-O>:w<CR>         " Save and stay in insert mode
