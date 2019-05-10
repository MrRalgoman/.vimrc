" BEGIN VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vim plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'w0rp/ale'
Plugin 'vim-scripts/gmlua.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" END VUNDLE

" Monokai color theme 
syntax on
colorscheme monokai

" Ctrl-p mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Enable javascript syntax plugin
let g:javascript_plugin_jsdoc = 1

" Set relative numbering
set nu
set rnu

" Native vim navigation for splits 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Fix indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Python powerline stuff
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup 

" Status bar positioning
set laststatus=2
