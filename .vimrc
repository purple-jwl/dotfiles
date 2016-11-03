" ---------- 基本設定 ----------
" 文字コード
set encoding=utf-8

" 文字に色をつける
syntax on

" カラー設定
colorscheme elflord

" カーソルの位置表示
set ruler

" 行番号を表示
set number

" 対応する括弧を強調表示
set showmatch

" 括弧を閉じた時に対応する括弧に一時的に移動
set nostartofline

" 複数ファイルの編集を許可
set hidden


" ---------- 検索 ----------
" 検索文字列をハイライト
set hlsearch

" インクリメンタルサーチ
set incsearch

" 大文字と小文字を区別しない
set ignorecase

" 行末まで検索を終えたら行頭に戻る
set wrapscan


" ---------- フォーマット ----------
" 自動インデント
set autoindent
set smartindent
set cindent

" タブ幅
set tabstop=4
set shiftwidth=4

" タブを空白に置換
set expandtab

" ターミナル上からの貼り付けを許可
"set paste


" ---------- その他 ----------
set showcmd
