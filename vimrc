set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
"plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/taglist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bogado/file-line'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'moll/vim-bbye'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/syntastic'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu
set cursorline
set tabstop=4
set shiftwidth=4

" 顯示列號
set number
" " 語法高亮度顯示
syntax on
" " 標記搜尋到的字串
set hlsearch
" " 自動縮排
set autoindent
" " 顯示說明
set ruler
" " 顯示編輯狀態
set showmode
" " 設定註解的顏色
highlight Comment ctermfg=cyan
" " 設定搜尋到的字串顏色
highlight Search term=reverse ctermbg=4 ctermfg=7
" 設定 tab 鍵的字元數
set wrap
"map <F10> :NERDTreeToggle<CR>
map <F2> :CtrlPMixed<CR>
map <f3> :ts<CR>
map <F9> :Tlist<CR>
map <F10> :SyntasticCheck<CR>
map <F11> :SyntasticToggleMode<CR>
"*** NERD Tree configuration ***"
"
let NERDTreeWinPos="left"
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=0
"
""*** Taglist configuration ***"

let Tlist_Show_One_File=1  
let Tlist_Use_Right_Window = 1 
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1 
let Tlist_Auto_Open = 1

"syntastic config -------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" air line config --------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Ctrlp config ------------------------
let g:ctrlp_cmd = 'CtrlPBuffer'



