syntax enable

set tabstop=2       " The width of a TAB is set to 2
set shiftwidth=2    " Indents will have a width of 2
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

set number
set title
set backspace=indent,eol,start
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set clipboard=unnamedplus

" Activate powerline-vim
let g:powerline_pycmd="py3"
let g:airline_powerline_fonts = 1

" Automatic install the vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'StanAngeloff/php.vim'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }

call plug#end()

set laststatus=2
set noshowmode
set ttimeoutlen=0 " Remove delay on <Esc>

let mapleader=" "

nnoremap <silent> <A-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>

nnoremap <Leader>j :GFiles<CR>
nnoremap <Leader>J :Files<CR>

