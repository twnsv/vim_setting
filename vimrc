set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"Vundle Plugin
call vundle#begin()
Plugin 'Vundlevim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Yggdroot/indentLine'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'
Plugin 'ap/vim-css-color'
Plugin 'mileszs/ack.vim'
Plugin 'KurtPreston/vim-autoformat-rails'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'

call vundle#end()

"general settings
filetype plugin indent on
syntax on
" set clipboard=unnamed
set encoding=utf8
set number
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set hls
set ruler
set incsearch
set hlsearch
set ic
set backspace=2
set smartindent

if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

"airline{
    set laststatus=2
    let g:airline_theme='term'
"}

"NERDTree{
    map <F2> :NERDTreeToggle<CR>
    let NERDTreeShowBookmarks = 1
    let NERDTreeShowHidden = 1
"}

"syntastic{
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
"}

"nerdcommenter{
    let mapleader=","
"}

"t-comment{
    map <c-/> <c-_><c-_>
    map <c-b> <c-_>b
"}

"neocomplete{
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
"}

"indentLine{
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
"}

"EasyMotion{
let g:EasyMotion_leader_key = '<Leader><Leader>'
let mapleader=","
"}

"emmet-vim{
let g:user_emmet_expandabbr_key = '<Tab>'
"}