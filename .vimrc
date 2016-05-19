" viM mode
set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'suan/vim-instant-markdown'
Plugin 'spf13/PIV'
Plugin 'zefei/vim-wintabs'

call vundle#end()
filetype plugin indent on

" Basic editor settings
set ruler
set textwidth=120
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set nowrap
set number
set guioptions -=T

" Allow the mouse to function as expected
set mouse=a

" Sets tab navigation
map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)

" Automatically enable syntax for files
syntax on

" Light eclipse theme
set background=light
color eclipse

" Automatically change the current directory
set autochdir

" Disables code folding
set nofoldenable

" Allows backspace to work normally
set backspace=2

" Ctrl-C & Ctrl-V support
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" NERDTree hotkey
map <C-e> :NERDTreeToggle<CR>

" Removes trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Inserts empty line with enter key
nmap <S-ENTER> O<Esc>
nmap <CR> o<Esc>

" Removes swap files
set nobackup
set nowritebackup
set noswapfile
