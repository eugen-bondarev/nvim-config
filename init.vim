lan en_US

set number
set relativenumber
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop
set mouse=a
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe

call plug#begin()

" Icons
Plug 'ryanoasis/vim-devicons'
set encoding=UTF-8

" File management
Plug 'preservim/nerdtree' 
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" CTRL + P to find files
Plug 'ctrlpvim/ctrlp.vim' 
let g:ctrlp_custom_ignore = 'node_modules\|git'

" Color schemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ful1e5/onedark.nvim'

" Auto close pairs - ''()[]{}
Plug 'vim-scripts/AutoClose'

" JavaScript, TypeScript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
let g:coc_global_extensions = [
\	'coc-tsserver'
\]

" All langs
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

Plug 'vim-airline/vim-airline'

Plug 'mg979/vim-visual-multi'

call plug#end()

colorscheme deep-space
set termguicolors

