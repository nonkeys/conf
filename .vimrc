set nocompatible
set noswapfile

" display
set laststatus=2
set cmdheight=2
set showcmd
set title
 


colorscheme desert 
set statusline=%<%f\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v\ %l/%L

" tab
"-----------------------------------------------------------
set tabstop=2 shiftwidth=2 softtabstop=0
set expandtab              " タブを空白文字に展開
set autoindent smartindent " 自動インデント，スマートインデント



" コマンド補完 
"-----------------------------------------------------------
set wildmenu           " コマンド補完を強化
set wildmode=list:full " リスト表示，最長マッチ

" 検索関連
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト



"表示関連
set showmatch         " 括弧の対応をハイライト
set showcmd           " 入力中のコマンドを表示
set nowrap            " 画面幅で折り返えさな

syntax on " シンタックスカラーリングオン


set complete+=k    " 補完に辞書ファイル追加
filetype on
filetype indent on " ファイルタイプによるインデントを行う
filetype plugin on " ファイルタイプごとのプラグインを使う

au BufRead,BufNewFile *.ctp setfiletype php
au BufRead,BufNewFile *.erb setfiletype ruby

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"200,:20,%,n~/.viminfo

set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,euc-jp,cp932
set fileencoding=utf-8

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

set ambiwidth=double
