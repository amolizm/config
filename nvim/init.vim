" Enable filetype detection, plugins, and indentation
filetype plugin indent on
syntax on

" Configure tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Display line numbers
set relativenumber
set number

" Initialize and configure plugins
call plug#begin('~/.local/share/nvim/site/pack/plug/start/')

" Plugin definitions
Plug 'dense-analysis/ale'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" ALE configuration for Go
let g:ale_linters = {
    \ 'go': ['golint', 'govet', 'golangci-lint'],
    \ }
let g:ale_fixers = {
    \ 'go': ['gofmt'],
    \ }

" Enable live linting (on text change)
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_on_save = 1


