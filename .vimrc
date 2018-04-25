set nocompatible
filetype off

"Maps for chaning between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Enable qouting words
nnoremap <space>" ciw""<Esc>P
nnoremap <space>' ciw''<Esc>P

" Show documentation for folds
let g:SimpylFold_docstring_preview=1

" Add proper pep8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set shiftwidth=4|
    \ set textwidth=79|
    \ set expandtab|
    \ set autoindent|
    \ set fileformat=unix

augroup filetypedetect
	au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
	au BufNewFile,BufRead *.scala set filetype=scala syntax=scala
augroup END

" Set indentation for js, html, and css
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2|
    \ set softtabstop=2|
    \ set shiftwidth=2

"set utf-8 encoding
set encoding=utf-8

" make autocomplete window disappear after your
" done with it
let g:ycm_autoclose_preview_window_after_completion=1
" shortcut for goto definition
map <space>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Make python pretty
let python_highlight_all=1
syntax on

" add virtual environment support for python
python << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

" Let nertree ignore pyc files
let NERDTreeIgnore=['\.pyc$','\~$']

" turn on line numbering
set nu

" Let vim access system clipboard
set clipboard=unnamed

" set the runtime path to include vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'derekwyatt/vim-scala'

Bundle "motus/pig.vim"


"All plugins must be added before next line
call vundle#end()
filetype plugin indent on
