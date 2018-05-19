" /home/henry/.spf13-vim-3/.vimrc

if &compatible
  set nocompatible
endif
" Install plugins  :call dein#install()
set runtimepath+=/mnt/d/dein/repos/github.com/Shougo/dein.vim "path to dein.vim

if dein#load_state('/mnt/d/dein')
  call dein#begin('/mnt/d/dein')
  " Let dein manage dein
  " Required:
  call dein#add('/mnt/d/dein/repos/github.com/Shougo/dein.vim')
  " Add or remove plugins here:
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('Yggdroot/indentLine')
  call dein#add('easymotion/vim-easymotion')
  "call dein#add('tomasiser/vim-code-dark')
  "call dein#add('kristijanhusak/vim-hybrid-material')
  "call dein#add('joshdick/onedark.vim')
  call dein#add('fneu/breezy')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('airblade/vim-gitgutter')
  "call dein#add('Shougo/denite.nvim')
  call dein#add('tpope/vim-fugitive')
  "call dein#add('Shougo/deoplete.nvim')
  call dein#add('ternjs/tern_for_vim', { 'do': 'npm install' })
  call dein#add('pangloss/vim-javascript')
  "call dein#add('Valloric/YouCompleteMe')
  
  " Required
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
syntax on

set number
set relativenumber

set list " Display unprintable characters
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

set showcmd
set noshowmode
set laststatus=0
set noruler
set tabstop=2
set shiftwidth=2
set showmatch
set smarttab
set expandtab

" change the mapleader from \ to ,
let mapleader=","

" allow powerline fonts
let g:airline_powerline_fonts = 1

let g:enable_bold_font = 1
let g:enable_italic_font = 1

" use powerline theme
"let g:airline_theme='dark_minimal'
"let g:airline_theme='distinguished'
let g:airline_theme='powerlineish'
"let g:airline_theme='breezy'

" change vim colorscheme
set background=light
"set background=dark

set termguicolors

"colorscheme codedark
"colorscheme hybrid_material
"colorscheme onedark
"colorscheme breezy
"colorscheme zenburn

" enable deoplete on startup
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

" single character names for airline
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'c' : 'C',
      \ 'v' : 'V',
      \ 'V' : 'V',
      \ '^V' : 'V',
      \ 's' : 'S',
      \ 'S' : 'S',
      \ '^S' : 'S',
      \ }
