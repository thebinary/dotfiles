
set nocompatible	" Disable vi-compatibility
filetype off

"" VUNDLE
"" set the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

"" Explicitly tell ViM that terminal supports 256 colors
set t_Co=256

"" Support unicode glyphs
set encoding=utf-8

"" Vundle Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'jnurmine/Zenburn'
Plugin 'suan/vim-instant-markdown'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-surround'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'Shougo/unite.vim'
Plugin 'ujihisa/unite-colorscheme'
Plugin 'vim-scripts/paredit.vim'
Plugin 'luochen1990/rainbow'
"Plugin 'jgdavey/tslime.vim'
Plugin 'sjl/tslime.vim'
"Plugin 'kovisoft/slimv'
"Plugin 'vim-scripts/netrw.vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'Lokaltog/vim-powerline'

"Bundle 'https://github.com/neilagabriel/vim-geeknote'

call vundle#end()
"" Vundle Plugins
"

filetype plugin indent on

" Leaders
noremap <SPACE> <Nop>
let mapleader=","
let maplocalleader="-"

" Delete
nnoremap <leader>d dd

" VIMRC
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>:echo "Reloaded vimrc!!!"<cr>

"" Searching
set hlsearch	" Highlight last search
set incsearch	" Highlight as your search
nmap <silent> <F5> :nohlsearch<CR>

"" Tabs
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprev<cr>
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>to :tabonly<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprev<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>ls :ls<cr>
nnoremap <leader>c :close<cr>
set sts=4	" Softtab stop

"" Statusbar
"set ruler		" Current Position in statusbar
set laststatus=2	" Always show statusbar

"" Help
" always open help in newtab
cabbrev help tab help

"" Splits
set splitbelow
set splitright

"" Folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

"" Navigation
imap jk <Esc>
no  <down>  <Nop>
no  <up>  <Nop>
no  <left>  <Nop>
no  <right>  <Nop>
ino  <down>  <Nop>
ino  <up>  <Nop>
ino  <left>  <Nop>
ino  <right>  <Nop>
vno  <down>  <Nop>
vno  <up>  <Nop>
vno  <left>  <Nop>
vno  <right>  <Nop>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-l> <C-W><C-l>
nnoremap <S-F1>	:cc<CR>
nnoremap <S-F1>	:cc<CR>
nnoremap <F2>	:cnext<CR>
nnoremap <S-F2>	:cprev<CR>
nnoremap <C-N> :NERDTree<CR>

"" Shortcuts
nnoremap <leader>' ysiw'

"" Statusline
set wildmenu
set wildmode=longest:full,full

"" NerdTree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"" Airline
"let g:airline_theme = 'luna'
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1

"" SimplylFold
let g:SimpylFold_docstring_preview=1


"" Map Leader
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


""" CtrlP
let g:ctrlp_custom_ignore = {
    \ 'dir': '',
    \ 'file': '\v\.(jpeg|jpg|png|pdf|pyc)$',
    \ }
" use nearest .git directory as working directory
let g:ctrlp_working_path_mode = 'r'

"" Editing
set modeline
set modelines=2
" set relativenumber
set number
"set listchars=eol:⁊,tab:➤\ ,trail:•
"set listchars=eol:⁊,tab:➤\ ,trail:•
"set list
"" Enable crontab editing in-place
autocmd FileType crontab setlocal nowritebackup


"" Coding
syntax on
nmap <silent> <F2> :set relativenumber!<CR>
nmap <silent> <F3> :set number! <CR>
nmap <silent> <F7> :!./% <CR>
nmap <silent> <F8> :!make <CR>
vnoremap < <gv
vnoremap > >gv
vnoremap <F9> :s!^!#!g<cr> :nohlsearch<cr>
let python_highlight_all = 1

"" Display
set cursorline
"colorscheme zenburn
colorscheme solarized
"set background=light
set background=dark

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

"" Mark BadWhitespaces
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"source ~/.vim/abbrev/*.vim
"
au BufWritePost *.go :silent !~/.vimextras/tmux/go_build_run %:p:r
au BufNewFile *.sh so ~/.vimextras/headers/bash
au BufNewFile *.go so ~/.vimextras/headers/go_main
au BufNewFile *.sh exe "g/#Date.*:.*/s/Now/" . strftime("%a %b %d %T %Z %F")
autocmd BufNewFile,BufReadPost *.md set filetype=markdown


let g:slimv_swank_cmd = '! tmux new-window -d -n REPL-SBCL "sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp"'
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
let g:rainbow_active = 1
" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
"let g:tslime_always_current_session = 1 
"let g:tslime_always_current_window = 1
let g:tslime_normal_mapping = '<c-c><c-c>'
let g:tslime_visual_mapping = '<c-c><c-c>'
let g:tslime_vars_mapping = '<c-c>v'
" }}}
