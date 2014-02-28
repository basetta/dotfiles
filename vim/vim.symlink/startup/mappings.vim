" ----------------------------------------------------------------------------
"  Remapping
" ----------------------------------------------------------------------------

" lead with ,
let mapleader = " "

" exit to normal mode with 'jj'
inoremap jj <ESC>


" reflow paragraph with Q in normal and visual mode
nnoremap Q gqap
vnoremap Q gq

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
" Unmap the arrow keys
" nnoremap <Down> ddp
" nnoremap <Up> ddkP
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
vnoremap <Down> <Nop>
vnoremap <Up> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Down> <Nop>
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk


