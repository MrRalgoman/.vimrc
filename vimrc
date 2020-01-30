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
Plugin 'w0rp/ale'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'zxqfl/tabnine-vim'
Plugin 'git://github.com/urso/haskell_syntax.vim.git'
Plugin 'sjl/badwolf'
call vundle#end()            " required

filetype plugin indent on    " required
" END VUNDLE

" True colors?
if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
endif

" One half dark color theme
syntax on
set t_Co=256
colorscheme badwolf
"onehalfdark
:set syntax=haskell

" Cursor type per mode
let &t_EI = "\e[2 q" " block on normal
let &t_SI = "\e[5 q" " blinking line on insert

" Fold method
:set foldmethod=indent

" Ctrl-p mapping
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Always show status line
:set laststatus=2

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

" Remap F5 to NERDTree
nnoremap <F5> :NERDTree<CR>

" Fix indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Set python syntax to 3
let g:syntastic_python_checkers=['flake8']
