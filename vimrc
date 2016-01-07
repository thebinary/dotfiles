
set nocompatible	" Disable vi-compatibility
filetype off

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
nnoremap <leader>jt :tabnext<cr>
nnoremap <leader>kt :tabprev<cr>
nnoremap <leader>tt :tabnew<cr>
nnoremap <leader>qt :tabclose<cr>
nnoremap <leader>ot :tabonly<cr>
nnoremap <leader>jb :bnext<cr>
nnoremap <leader>kb :bprev<cr>
nnoremap <leader>qb :bdelete<cr>
nnoremap lsleader>ls :ls<cr>
set sts=4	" Softtab stop

"" Statusbar
"set ruler		" Current Position in statusbar
set laststatus=2	" Always show statusbar

"" Help
" always open help in newtab
cabbrev help tab help

"" Navigation
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
nnoremap <S-F1>	:cc<CR>
nnoremap <S-F1>	:cc<CR>
nnoremap <F2>	:cnext<CR>
nnoremap <S-F2>	:cprev<CR>


"" Statusline
set wildmenu
set wildmode=longest:full,full

"" set the runtime path
set rtp+=~/.vim/bundle/Vundle.vim

"" Explicitly tell ViM that terminal supports 256 colors
set t_Co=256

"" Support unicode glyphs
set encoding=utf-8

"" Vundle Plugins
call vundle#begin()

Plugin 'suan/vim-instant-markdown'
Plugin 'vim-scripts/netrw.vim'
"Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
"" Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'chase/vim-ansible-yaml'


"Bundle 'https://github.com/neilagabriel/vim-geeknote'

call vundle#end()
"" Vundle Plugins


filetype plugin indent on

"" Powerline 
" let g:Powerline_symbols = 'unicode'
"" Airline
"let g:airline_theme = 'luna'
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1

"" Map Leader
nmap <leader>p :CtrlP<cr>
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


""" CtrlP
let g:ctrlp_custom_ignore = {
    \ 'dir': '',
    \ 'file': '\v\.(jpeg|jpg|png|pdf)$',
    \ }
" use nearest .git directory as working directory
let g:ctrlp_working_path_mode = 'r'


"" Geeknote 
let g:GeeknoteFormat="markdown"


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

" Ultisnips Setup
"
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "bundle/vim-snippets/UltiSnips"]

"" Display
set cursorline
colorscheme solarized
set background=dark

"source ~/.vim/abbrev/*.vim
"
au BufWritePost *.go :silent !~/.vimextras/tmux/go_build_run %:p:r
au BufNewFile *.sh so ~/.vimextras/headers/bash
au BufNewFile *.go so ~/.vimextras/headers/go_main
au BufNewFile *.sh exe "g/#Date.*:.*/s/Now/" . strftime("%a %b %d %T %Z %F")
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

