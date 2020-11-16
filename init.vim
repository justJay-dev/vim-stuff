call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree' |
                \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do':{ -> fxf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/denite.nvim'
call plug#end()
colorscheme codedark
syntax on
syntax enable
set nowrap
set nobackup
set noswapfile
set number
set ignorecase
set smartcase
set number relativenumber
nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
let g:deoplete#enable_at_startup = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
augroup nerdtree_open
        autocmd!
        autocmd VimEnter * NERDTree | wincmd p
augroup END
