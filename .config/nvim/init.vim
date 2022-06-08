set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set splitright
set splitbelow
set autoread
filetype on
filetype plugin on
filetype indent on

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'		" Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'			" NerdTree
Plug 'https://github.com/tpope/vim-commentary'			" For Commenting gcc & gc
Plug 'http://github.com/tpope/vim-surround'				" Surrounding ysw)
Plug 'https://github.com/ap/vim-css-color' 				" CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons'		" Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal'			" Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors'	" CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar'				" Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'				" Auto completion

call plug#end()

:colorscheme jellybeans
set encoding=UTF-8


""" Remaps """
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

inoremap jk <Esc>

nmap <F8> :TagbarToggle<CR>


" Airline """""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
