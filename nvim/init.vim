" Set true color
set termguicolors
set relativenumber
" Set global replacement
set gdefault
" Break long lines and set j,k navigation to take that into account
set breakindent
set showbreak=\\\\\
nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'
" Smart search 
set infercase
" Autosave/Autoread
set autoread
augroup autoSaveAndRead
    autocmd!
    autocmd TextChanged,InsertLeave,FocusLost * silent! wall
    autocmd CursorHold * silent! checktime
augroup END

" PLUGINS
" Directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'euclio/vim-markdown-composer' " markdown visualizer
Plug 'junegunn/fzf.vim'             " fuzzy finder
Plug 'morhetz/gruvbox'              " color
Plug 'mhinz/vim-signify'            " cool diffs
Plug 'janko-m/vim-test'             " run tests from nvim
Plug 'hardenedapple/vsh'            " awesome terminal inside nvim
Plug 'scrooloose/nerdtree'          " tree explorer
" Initialize plugin system
call plug#end()

set hlsearch
set expandtab shiftwidth=4 softtabstop=4 tabstop=4
set mouse=a

colorscheme gruvbox
set background=dark 

" Use pytest to run tests inside nvim
let test#python#runner = 'pytest'

" NERDTree
" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
