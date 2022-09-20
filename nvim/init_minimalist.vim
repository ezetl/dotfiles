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
" Clone git repositories of each plugin directly into ~/.local/share/nvim/site/pack/plugins/start
" NeoVim wil load them automatically during startup time. List of Plugins
" repos:
"   https://github.com/dense-analysis/ale
"   https://github.com/gpanders/editorconfig.nvim
"   https://github.com/preservim/nerdtree
"   https://github.com/mhinz/vim-signify
"   https://github.com/Mofiqul/vscode.nvim

colorscheme vscode
set background=dark

set hlsearch
set expandtab shiftwidth=4 tabstop=4
set mouse=a

" NERDTree
" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" dont show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

set inccommand=split
filetype plugin indent on
