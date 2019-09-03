call plug#begin('~/.local/share/nvim/plugged')
" NERDTree Plugin for Filebrowser inside neovim
Plug 'scrooloose/nerdtree'
" NERDTree git support
Plug 'Xuyuanp/nerdtree-git-plugin'
" Latex Autopreview
Plug 'donRaphaco/neotex', { 'for': 'tex' }
" Latex Plugin
Plug 'lervag/vimtex', { 'for': 'tex' }
" Tag management
Plug 'ludovicchabant/vim-gutentags'
" Snippet  management
Plug 'SirVer/ultisnips'
" Awesome autocompletion and statix analysis library for Python
Plug 'davidhalter/jedi-vim'
" Pyhton code linting
Plug 'nvie/vim-flake8', { 'for': 'py' }
" Code Linting
Plug 'dense-analysis/ale'
call plug#end()

syntax on
set background=dark
set encoding=utf8
set splitbelow
" gives you the number of lines above and under your current
set relativenumber
" Show line numbers
set number
set splitright
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
set noeb vb t_vb=


" Begin NERDTree
" Open NERDTree when vim opens a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" NERDTree Toggle mapping
map <C-n> :NERDTreeToggle<CR>
" Close vim when NERDTree is the only remaining opened buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" End NERDTree

" Begin NERDTree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" End NERDTree git plugin

" Begin vimtex plugin
" Document Viewer
let g:vimtex_view_general_viewer = 'zathura'
" Change the build directory to keep it separated from the source
let g:vimtex_latexmk_build_dir = './build'
" End vimtex Plugin

" Begin Neotex
" Start neotex on vim Startup
let g:neotec_enabled = '2'
" Update Intervall in milliseconds
let g:neotex_delay = '100'
" End Neotex


" Begin ultisnips
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" End Ultisnips
