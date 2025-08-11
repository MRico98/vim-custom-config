
" ╔═══════════════════════════════════════════════════════════════════════════╗
" ║                              VIM CONFIGURATION                              ║
" ╚═══════════════════════════════════════════════════════════════════════════╝

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               PLUGIN MANAGER                               │
" └───────────────────────────────────────────────────────────────────────────┘
call plug#begin('~/.vim/plugged')

" File Explorer
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Terminal Integration
Plug 'voldikss/vim-floaterm'

" Git Integration
Plug 'tpope/vim-fugitive'

" Themes & UI
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               AIRLINE CONFIG                               │
" └───────────────────────────────────────────────────────────────────────────┘
" Theme & Font Settings
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" Extensions
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
let g:airline#extensions#obsession#enabled = 0

" Tabline Configuration
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 0

" Section Customization
let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = '%{airline#util#wrap(airline#extensions#branch#get_head(),0)}'
let g:airline_section_c = '%t%m'
let g:airline_section_z = '%l:%c (%p%%)'

" Symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ''

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              NERDTREE CONFIG                               │
" └───────────────────────────────────────────────────────────────────────────┘
" Show hidden files by default
let NERDTreeShowHidden=1

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                               DEVICONS CONFIG                              │
" └───────────────────────────────────────────────────────────────────────────┘
" Enable DevIcons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1 
let g:webdevicons_enable_vimfiler = 1

" Icon Decorations
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''

" Color Settings
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              THEME & COLORS                                │
" └───────────────────────────────────────────────────────────────────────────┘
colorscheme gruvbox
set background=dark

" ┌───────────────────────────────────────────────────────────────────────────┐
" │                              EDITOR SETTINGS                               │
" └───────────────────────────────────────────────────────────────────────────┘
set number
set relativenumber
