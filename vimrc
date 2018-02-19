set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rip-rip/clang_complete'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'vim-scripts/cscope.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'octol/vim-cpp-enhanced-highlight'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ------------------------------------------------------
" Google Format
" ------------------------------------------------------
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END

" ------------------------------------------------------
" Tabs
" ------------------------------------------------------
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" ------------------------------------------------------
" Clang_complete
" ------------------------------------------------------
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/'

" -----------------------------------------------------
"  C++ highlight
" -----------------------------------------------------
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1


" -----------------------------------------------------
"  Misc
" -----------------------------------------------------
" Fix backspace indentation
set backspace=indent,eol,start
" Convince Vim it can use 256 colors
syntax on
set t_Co=256

set foldmethod=indent
set foldlevel=99
set foldenable

" Turn off annoying swapfiles
set noswapfile
" Enable hidden buffers
set hidden

" Better Search
set hlsearch

map Q gq

if has('mouse')
    set mouse=a
endif
