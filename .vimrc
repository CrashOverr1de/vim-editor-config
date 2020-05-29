call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'}
"Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR>
nmap <leader>T :enew<CR>
nmap <leader>bn :bn<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bd :bd<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_gruvbox_dark_hard'

set incsearch
set hlsearch
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartcase
set smarttab
set smartindent
set expandtab
set showcmd
set showmatch
set cursorline
set laststatus=2
set statusline=%F\ %y%m%r\ %=Line:\ %l/%L\ [%p%%]\ Col:%c\ Buf:%n
set history=1000
set background=dark
"colorscheme jellybeans
colorscheme gruvbox
set t_Co=256

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
