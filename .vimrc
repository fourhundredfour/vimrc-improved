set nocompatible		" required
filetype off			" required

" Set up the runtime path to include vim plug
" and initialize; required
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround' " Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug 'google/vim-maktaba' " Maktaba is a vimscript plugin library. It is designed for plugin authors.
Plug 'google/vim-codefmt' " Vim plugin for syntax-aware code formatting
Plug 'preservim/nerdtree' " Navigation / File Explorer
Plug 'vhdirk/vim-cmake' " Vim/Neovim plugin for working with CMake projects
"Plug 'Valloric/YouCompleteMe'
Plug 'easymotion/vim-easymotion' " easyMotion provides a much simpler way to use some motions in vim.
Plug 'airblade/vim-gitgutter' " A Vim plugin which shows git diff markers in the sign column and stages/previews/undoes hunks and partial hunks.
Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline plugin for Vim
Plug 'rainglow/vim' " 320+ color themes for VIM.
Plug 'fatih/vim-go'
Plug 'yuttie/comfortable-motion.vim' " Brings physics-based smooth scrolling to the Vim world!
Plug 'junegunn/goyo.vim' " Distraction-free writing in Vim
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'jdsimcoe/abstract.vim'
Plug 'jiangmiao/auto-pairs' " Vim plugin, insert or delete brackets, parens, quotes in pair
Plug 'tpope/vim-sensible' " sensible.vim: Defaults everyone can agree on
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

set encoding=utf8
set showcmd
set updatetime=300
set nowrap
set backspace=indent,eol,start
set number
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set laststatus=2
set wildmenu
set langmenu=en
set wildignore=*.o,*~,*.pyc
set ruler
set cmdheight=2
set hid
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500

if has("gui_macvim")
  autocmd GUIEnter * set vb t_vb=
endif

set foldcolumn=1
set foldmethod=indent
let g:elite_mode=1

let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAterGlyphPadding = ' '

set cursorline

set statusline+=%{FugitiveStatusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

syntax enable

if $COLORTERM == 'gnome-terminal'
  set t_CO=256
endif
set termguicolors

colorscheme murphy
set background=dark

set guifont=DroidSansMono\ Nerd\ Font:h11

if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif


set ffs=unix,dos,mac

set mouse=

set nobackup
set nowb
set noswapfile

set lbr
set tw=500
set ai
set si
set wrap

if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-f> :FormatCode<cr>
map <C-s> :w<cr>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

autocmd VimEnter * NERDTree
