set nocompatible
" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
let mapleader =","
let &t_Co=256
syntax on
colorscheme default 
set background=dark

" Line at 80 chars
" set colorcolumn=80
" hi ColorColumn ctermbg=DarkBlue

set expandtab
set smarttab
set shiftwidth=3
set softtabstop=3
set tabstop=3
set autoindent
" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" color numbers differently
highlight LineNr ctermfg=233
set number

" settings for indent guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
set ts=4 sw=4 et

" needed for airline
set laststatus=2
let g:airline_powerline_fonts = 1

" for navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
