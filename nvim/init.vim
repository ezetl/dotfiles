" Set true color
set termguicolors
" Show relative lines. Also, show actual line number in the cursor line
set relativenumber
set number
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
Plug 'euclio/vim-markdown-composer'        " Markdown visualizer - 
                                           " This one requires Rust + cargo installed in your system. 
                                           " Read https://github.com/euclio/vim-markdown-composer#installation for installation instructions
Plug 'junegunn/fzf.vim'                    " Fuzzy finder
Plug 'morhetz/gruvbox'                     " Color
Plug 'mhinz/vim-signify'                   " Cool diffs
Plug 'janko-m/vim-test'                    " Run tests from nvim
Plug 'hardenedapple/vsh'                   " Awesome terminal inside nvim
Plug 'scrooloose/nerdtree'                 " Tree explorer
Plug 'editorconfig/editorconfig-vim'       " EditorConfig Support
Plug 'w0rp/ale'                            " Asynchronous Linter
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

set inccommand=split
filetype plugin indent on

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
