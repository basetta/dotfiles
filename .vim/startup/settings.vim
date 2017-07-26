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
au BufNewFile,BufRead *.gradle setf groovy " activate syntax for gradle files
"removing trailing spaces
autocmd FileType scala,cpp,java,sh autocmd BufWritePre <buffer> :%s/\s\+$//e

" ----------------------------------------------------------------------------
"  UI
" ----------------------------------------------------------------------------

set ruler                  " show the cursor position all the time
set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw
set number                 " line numbers
set relativenumber         " set relative line number
set wildmenu               " turn on wild menu for command line completition
set wildmode=list:longest,full
set ch=2                   " command line height
set backspace=2            " allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l,[,] " backspace and cursor keys wrap to
set shortmess=filtIoOA     " shorten messages
set report=0               " tell us about changes
set nostartofline          " don't jump to the start of line when scrolling

" ----------------------------------------------------------------------------
"  Apperance
" ----------------------------------------------------------------------------
set background=dark
set t_Co=256 " 256 colors in terminal
let g:solarized_termcolors=256
set cursorline                                            " highlight the current line
"set cursorcolumn                                          " highlight the current line
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(101,999),",")

"highlight OverLength ctermbg=red ctermfg=white guibg=#FFD9D9
"match OverLength /\%81v.\+/


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

