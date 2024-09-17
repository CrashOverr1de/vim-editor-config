call plug#begin('~/.vim/plugged')

"Plug 'scrooloose/nerdtree', {'on' : 'NERDTreeToggle'}
"Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

if has("syntax")
	syntax on
endif

set guioptions-=m	" menu bar
set guioptions-=T	" toolbar
set guioptions-=r	" scrollbar
set guifont=D2Coding:h12:cHANGEUL:qDRAFT
set incsearch		" 검색 시 실시간 하이라이팅
set hlsearch		" 검색어 하이라이팅
set number			" 줄번호 출력
"set numberwidth=4	" 줄번호 표시 영역의 너비
set tabstop=4		" Tab Indent를 4칸으로
set softtabstop=4	" expandtab이 켜져있을 경우 space로
set shiftwidth=4	" (<<, >>) 등의 명령으로 들여쓰기 처리할 때 Tab 4칸으로
"set ignorecase		" 검색 시 대소문자 구별하지 않음
set smartcase		" 검색 시 키워드에 대소문자가 섞여있을 경우 대소문자 구별
set smarttab		" 백스페이스로 지울 때 탭 단위로 삭제
"set autoindent		" 자동으로 들여쓰기
set smartindent		" 언어별 자동으로 들여쓰기
"set expandtab		" Tab 대신 Space
set showcmd			" 입력 중인 명령을 상태바에 표시
set showmatch		" 매칭되는 괄호를 표시
set cursorline		" 커서 라인 표시
set laststatus=2	" 하단 상태바 표시 (0: 표시안함, 1: 창이 2개 이상일 때 표시, 2: 항상 표시)
set statusline=%F\ %y%m%r\ %=Line:\ %l/%L\ [%p%%]\ Col:%c\ Buf:%n
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
set history=1000	" 명령어 히스토리 1000개

set termguicolors
set background=dark	" 배경색
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_transparent_bg=1
"let g:gruvbox_number_column='aqua'
"let g:gruvbox_sign_column='aqua'
colorscheme gruvbox
"colorscheme jellybeans
autocmd vimenter * highlight Normal guibg=NONE ctermbg=NONE

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s:'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'unicode'
let g:airline_theme = 'base16_gruvbox_dark_soft'

set t_Co=256
set lines=30 columns=100
"set fileencodings=utf-8,cp949
"set encoding=utf-8
"set title			" 타이틀바에 편집 중인 파일을 표시

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
