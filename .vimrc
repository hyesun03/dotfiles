set nocompatible            " be iMproved, required
filetype off                " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
call vundle#end()

syntax on                   " 문법 체크
filetype plugin indent on   " 파일 확장자 인식, 플러그인 사용, 들여쓰기 사용

set number                  " 줄 번호 표시
set hlsearch                " 검색 시 하이라이트
set ignorecase              " 검색 시 대소문자 구분 안 함
set showmatch               " 매치되는 괄호 표시
set smartindent             " 스마트한 들여쓰기
set expandtab               " tab 대신 space 사용
set shiftwidth=4            " 자동 들여쓰기 4 space
set tabstop=4               " tab을 4 space 로
set nobackup                " 백업파일 안 만듦
set ruler                   " 화면 우측 하단에 현재 커서의 위치 (줄, 칸) 표시

