"  ____ _____ _   _  ____ 
" / ___|_   _| | | |/ ___|
" \___ \ | | | |_| | |  _ 
"  ___) || | |  _  | |_| |
" |____/ |_| |_| |_|\____|
"
" Thiago Costa de Souza
" http://github.com/souzathg
"
" A customized init.vim for neovim (https://neovim.io/)
                                                 
set nocompatible				" be iMproved, required
filetype off					" required


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plugins (Manager: Vim-Plug [github.com/junegunn/vim-plug])
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugged')

" The basics
Plug 'itchyny/lightline.vim'							" Lightline statusbar
Plug 'frazrepo/vim-rainbow'								" Rainbow brackets
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

filetype plugin indent on		" required

" Brief help
" :PlugInstall					- install plugins
" :PlugUpdate					- install or update plugins
" :PlugStatus					- check the status of plugins
" :PlugClean					- remove unlisted plugins


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch					" Incremental search.
set hidden					" Needed to keep multiple buffers open.
set nobackup					" No auto backups.
set noswapfile					" No swap.
set number relativenumber			" Display line numbers
set clipboard=unnamedplus			" Copy/paste between vim and other programs.
set t_Co=256					" Setif term supports 256 colors.
syntax enable
let g:rehash256 = 1
let g:rainbow_active = 1

:colorscheme jellybeans
set encoding=UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"

imap jk <Esc>

nmap <F8> :TagbarToggle<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>q :wq<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remapping splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\ 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Open terminal inside Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>tt :vnew term://zsh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set mouse=a

