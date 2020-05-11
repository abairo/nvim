" ~/.vimrc

call plug#begin()

" Lista de plugins
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale', { 'do': 'pip install flake8 isort yapf' }
Plug 'maralla/completor.vim', { 'do': 'pip install jedi' }
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'terryma/vim-multiple-cursors'
Plug 'morhetz/gruvbox' 
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

" Ale
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'python': [
\       'isort',
\       'yapf',
\       'remove_trailing_lines',
\       'trim_whitespace'
\   ]
\}

" Jedi
let g:jedi#completions_enabled = 0

" vim-test
let test#python#runner = 'pytest'

" custom config
colorscheme gruvbox
set background=dark
set number
set relativenumber
set incsearch
set hlsearch
set title
set inccommand=split
set mouse=a
let mapleader="\<space>"
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
