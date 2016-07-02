" 表示設定
set number
set relativenumber
set title

" インデント関連
set cindent
set tabstop=4
set shiftwidth=4
set expandtab

" 怖い先輩()直々のArrowキーを殺す設定
noremap <UP>     <NOP>
noremap <DOWN>   <NOP>
noremap <LEFT>   <NOP>
noremap <RIGHT>  <NOP>
inoremap <UP>    <NOP>
inoremap <DOWN>  <NOP>
inoremap <LEFT>  <NOP>
inoremap <RIGHT> <NOP>

" ステータスラインの設定
"set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [%p%%]\ {LEN=%L]
set laststatus=2

" helpの日本語化
helptags ~/.vim/vimdoc-ja/doc
set rtp+=~/.vim/vimdoc-ja
set helplang=ja

" colorscheme
set background=dark
colorscheme desert

" Template of configuration with dein.vim
" by koturn
if has('vim_starting')
  let s:deindir = expand('~/.vim/dein')
  let s:deinlocal = s:deindir . '/repos/github.com/Shougo/dein.vim'
  let &runtimepath = s:deinlocal . ',' . &runtimepath
endif

if dein#load_state(s:deindir)
  call dein#begin(s:deindir)
  call dein#add('Shougo/dein.vim')
  call dein#add('itchyny/lightline.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
