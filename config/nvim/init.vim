syntax enable
filetype plugin indent on 

set number 
set mouse=a 
set numberwidth=1 
set clipboard+=unnamedplus
set showcmd 
set ruler 
set encoding=utf-8 
set showmatch 
set sw=2 
set relativenumber 
set laststatus=2 
set noerrorbells 
set expandtab 
set smartindent 
set nowrap 
set noswapfile 
set incsearch 
set ignorecase
set tabstop=4
set termguicolors 

call plug#begin()

" Theme
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Extras
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'ervandew/supertab'

" Code helpers
Plug 'jiangmiao/auto-pairs'

" Lua
Plug 'tbastos/vim-lua'

" JavaScript/TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'

" yaml
Plug 'stephpy/vim-yaml'

" toml
Plug 'cespare/vim-toml'

" Coc
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

if &term == "alacritty"        
    let &term = "xterm-256color"
endif

colorscheme one 
set background=dark 
hi Normal guibg=NONE ctermbg=NONE
let t:is_transparent = 1
let g:one_allow_italics=1 

let g:airline_powerline_fonts=1 
let g:airline#extensions#tabline#enabled = 1 
let g:airline_theme='onedark' 
let g:airline#extensions#tabline#buffer_nr_show = 1 

let g:webdevicons_enable_nerdtree=1 
let g:webdevicons_conceal_nerdtree_brackets=1 

let NERDTreeQuitOnOpen=1

let g:coc_global_extensions = ['coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*'] 

let g:javascript_plugin_jsdoc = 1

let g:SuperTabDefaultCompletionType = "<c-n>"

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>sr :source %<CR>

nmap <Leader>] <Plug>AirlineSelectNextTab
nmap <Leader>[ <Plug>AirlineSelectPrevTab

nmap <Leader>bd :bd<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gtd <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

au BufNewFile,BufRead *.ts setlocal filetype=typescritp
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
