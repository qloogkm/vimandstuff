" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin()

" plugins
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'ervandew/supertab'
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'groenewege/vim-less'

call plug#end()

" basics
set nocompatible
syntax on
set background=dark
" prevent undesirable mouse behavior
set mouse=

" use true colors
set termguicolors
colorscheme gruvbox

" use deoplete
"let g:deoplete#enable_at_startup = 1
"autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
"let g:UltiSnipsExpandTrigger="<C-j>"
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"set completeopt=longest,menuone,preview
"let g:deoplete#sources = {}
"let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
"let g:tern#command = ['tern']
"let g:tern#arguments = ['--persistent']
" for emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" To handle spacing and tabs
filetype plugin indent on
set tabstop=2
set expandtab
set autoindent
set expandtab ts=2 sw=2 ai

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" color numbers differently
highlight LineNr ctermfg=238 
set relativenumber
set number

" needed for airline
set laststatus=2
let g:airline_powerline_fonts = 1
:let g:airline_theme='gruvbox'

" for navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>

" for ultisnips my man
let g:UltiSnipsExpandTrigger="<c-j>"
