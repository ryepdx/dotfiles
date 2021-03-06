set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'moll/vim-node'
Plugin 'valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
"let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="/home/dev/.vim/bundle/vim-snippets/UltiSnips"

call vundle#end()

filetype plugin indent on
syn on
set backspace=indent,eol,start

fun! Tab4()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
endfun

fun! Tab2()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
endfun

call Tab2()

highlight LineNr ctermfg=grey ctermbg=black
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabprev<CR>
nnoremap tk  :tabnext<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
syntax on
filetype plugin indent on
set expandtab
set number
set completeopt-=preview
set textwidth=80

" Plugin config
syntax enable
"set background=dark
"colorscheme twilight

" Strip trailing whitespace before saving
autocmd BufWritePre * :%s/\s\+$//e

" Autosave when leaving insert mode.
set updatetime=4000
autocmd InsertLeave <buffer> update
au! CursorHoldI,CursorHold <buffer> silent! :wa

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Semistandard
let g:syntastic_javascript_checkers=['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
