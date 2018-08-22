" Plugin Management
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'altercation/vim-colors-solarized'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'tpope/vim-vinegar'

Plug 'vim-syntastic/syntastic'

Plug 'vim-airline/vim-airline'

call plug#end()
" End Plugin Management


" Color Scheme
syntax enable
set background=dark
colorscheme solarized

" Hybrid Line Numbers
set number relativenumber

" Leader as Comma
let mapleader = ","

" Syntastic Settings
let g:go_fmt_command = "goimports"

let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
let g:go_list_type = "quickfix"

let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Allow :make to change files
set autowrite

" Vim Go Imports
let g:go_fmt_command = "goimports"

" Vim Go Highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" Vim Go MetaLinter
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"

" Vim Go Info
let g:go_auto_type_info = 1

" Vim Go Leader Remaps
autocmd FileType go nmap <leader>t  <Plug>(go-test)
