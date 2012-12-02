" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off
syntax on

set expandtab 
set softtabstop=2
set shiftwidth=2
set hlsearch
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

colorscheme desert 

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'gtags.vim'
Bundle 'scrooloose/nerdtree'

" ファイル形式検出、プラグイン、インデントを ON
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
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
