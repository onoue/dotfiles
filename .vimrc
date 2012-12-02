" vi $B$H$N8_49@-(BOFF
set nocompatible
" $B%U%!%$%k7A<0$N8!=P$rL58z$K$9$k(B
filetype off
syntax on

set expandtab 
set softtabstop=2
set shiftwidth=2
set hlsearch
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

colorscheme desert 

" Vundle $B$r=i4|2=$7$F(B
" Vundle $B<+?H$b(B Vundle $B$G4IM}(B
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'gtags.vim'
Bundle 'scrooloose/nerdtree'

" $B%U%!%$%k7A<08!=P!"%W%i%0%$%s!"%$%s%G%s%H$r(B ON
filetype plugin indent on 

"===========================
"" nerdtree
"===========================
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
endif

"===========================
"" neocomplcache
"===========================
let g:neocomplcache_enable_at_startup = 1 " $B5/F0;~$KM-8z2=(B
