set nocompatible		" required
filetype off			" required

" Set up the runtime path to include vundle
" and initialize; required
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'   " required
Plugin 'tpope/vim-surround'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vhdirk/vim-cmake'
Plugin 'bazelbuild/vim-bazel'
Plugin 'leafo/moonscript-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'tomasr/molokai'
Plugin 'airblade/vim-gitgutter'
Plugin 'dan-t/vim-cpp-include'
Plugin 'itchyny/lightline.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jnurmine/zenburn'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'fatih/vim-go'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'othree/html5.vim'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'nlknguyen/papercolor'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'
Plugin 'ajh17/Spacegray.vim'
Plugin 'dracula/vim'
Plugin 'joshdick/onedark.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-sensible'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()		" required
filetype plugin indent on	" required

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

let g:elite_mode=1

let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAterGlyphPadding = ' '

set cursorline

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

try
  colorscheme molokai
catch
endtry

set background=dark

if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

set encoding=utf8

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

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map <C-f> :FormatCode<cr>
map <C-s> :w<cr>
