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
autocmd FileType scala,cpp,java autocmd BufWritePre <buffer> :%s/\s\+$//e

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
"lokai theme
"let g:molokai_original=1
"colorscheme molokai
" override some highlight settings (turn off stupid italics in Molokai)
highlight ColorColumn  ctermbg=235 guibg=#2c2d27
highlight CursorLine   ctermbg=238 guibg=#2c2d27
highlight CursorColumn ctermbg=135 guibg=#2c2d27
highlight DiffText     gui=none
highlight Macro        gui=none
highlight SpecialKey   gui=none
highlight Special      gui=none
highlight StorageClass gui=none
highlight Tag          gui=none
"
" "" Solarized theme
" " colorscheme solarized
" " set bg=dark
"
" " highlight the 80th column
" "
" " In Vim >= 7.3, also highlight columns 120+
if exists('+colorcolumn')
" (I picked 120-320 because you have to provide an upper bound and 320
"   just
"     "  covers a 1080p GVim window in Ubuntu Mono 11 font.)
    let &colorcolumn="100,".join(range(100,320),",")
else
"         " fallback for Vim < v7.3
    autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set cursorline
hi cursorline guibg=\#333333
"cursorline
"autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
"autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue



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
" CtrlP 
" ----------------------------------------------------------------------------
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.jar,*.git/,build
