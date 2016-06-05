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
Plugin 'scrooloose/syntastic'
Plugin 'suan/vim-instant-markdown'
Plugin 'spf13/PIV'
Plugin 'zefei/vim-wintabs'
Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'edsono/vim-matchit'
Plugin 'tpope/vim-sleuth'
Plugin 'Shougo/neocomplete.vim'
Plugin 'dansomething/vim-eclim'

call vundle#end()

filetype plugin on

" Basic editor settings
set ruler
set textwidth=120
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set number
set nowrap
set guioptions -=T

" <ESC> action with timeoutlen delay
" https://gist.github.com/brendonrapp/5944296
augroup FastEscape
  autocmd!
  au InsertEnter * set timeoutlen=0
  au InsertLeave * set timeoutlen=1000
augroup END

" Enable spellchecker
setlocal spell spelllang=en_us

" Allow the mouse to function as expected
set mouse=a

" Sets tab navigation
map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)
map <F4> <Plug>(wintabs_close)

" Automatically enable syntax for files
syntax on

" Light eclipse theme
set background=light
color eclipse

" Automatically change the current directory
set autochdir

" Disables code folding
set nofoldenable
let g:DisableAutoPHPFolding = 1

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

" Neocomplete
let g:neocomplete#data_directory = '~/.vim/tmp/neocomplete'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#auto_completion_start_length = 2
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#sources#tags#cache_limit_size = 16777216
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
let g:neocomplete#force_overwrite_completefunc=1

" Eclim
let g:EclimCompletionMethod = 'omnifunc'
set completeopt-=preview

" Removes swap files
set nobackup
set nowritebackup
set noswapfile

" ctrl-s save
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <c-s> <Esc>:w<CR>
