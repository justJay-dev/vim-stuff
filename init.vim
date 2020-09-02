call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do':{ -> fxf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
colorscheme codedark
syntax on
syntax enable
set number
set ignorecase
set smartcase
set number relativenumber
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
augroup nerdtree_open
	autocmd!
	autocmd VimEnter * NERDTree | wincmd p
augroup END
