set noswapfile
set encoding=utf-8
" ----------------------------------------------------------------------------
"  Text Formatting
" ----------------------------------------------------------------------------

set autoindent             " automatic indent new lines
set smartindent            " be smart about it
set nowrap                 " do not wrap lines
set softtabstop=4         
set shiftwidth=4           " ..
set tabstop=4
set expandtab              " expand tabs to spaces
set nosmarttab             " fuck tabs
set formatoptions+=n       " support for numbered/bullet lists
set virtualedit=block      " allow virtual edit in visual block ..
syntax on
" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

set ruler                  " show the cursor position all the time
set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw
"set number                 " line numbers
set relativenumber         " set relative line number
set wildmenu               " turn on wild menu for command line completition
set wildmode=list:longest,full
set ch=2                   " command line height
set backspace=2            " allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l,[,] " backspace and cursor keys wrap to
set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling

" Powerline settings
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:airline_powerline_fonts = 1
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
" For powerline font in MacVim
set ambiwidth=double
set guifont=Menlo\ For\ Powerline

" ----------------------------------------------------------------------------
" Visual Cues
" ----------------------------------------------------------------------------

set showmatch              " brackets/braces that is
set mat=5                  " duration to show matching brace (1/10 sec)
set incsearch              " do incremental searching
set laststatus=2           " always show the status line
set ignorecase             " ignore case when searching
set nohlsearch             " don't highlight searches
set visualbell             " shut the fuck up

" ----------------------------------------------------------------------------
" Unite 
" ----------------------------------------------------------------------------

nnoremap <C-p> :Unite file_rec<cr>
set wildignore+=/tmp/*,*.so,*.swp,*.zip,*.jar
set wildignore+=/target/*
"set wildignore=*.o,*.obj,*.bak,*.exe,*.jar
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"set wildignore=*.o,*~,*.jar
"set up some custom ignores
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/', '\.jar',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ 'target/',
      \ '.sass-cache',
      \ ], '\|'))
