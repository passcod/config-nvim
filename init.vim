if has('vim_starting')
  set runtimepath+=~/.config/nvim/plugged/vim-plug/
endif
call plug#begin(expand('~/.config/nvim/plugged/'))

" Vim Plug is bootstrapped that way, so it updates itself
" in the same step as everything else. But you do need to
" set up a symlink in its install directory:
"
"     cd ~/.config/nvim/plugged/vim-plug; ln -s . autoload
Plug 'junegunn/vim-plug'

" 'Normalize.vim' at the top...
Plug 'tpope/vim-sensible'

Plug 'airblade/vim-gitgutter'
Plug 'digitaltoad/vim-jade'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'itchyny/lightline.vim'
Plug 'jayflo/vim-skip'
Plug 'kien/ctrlp.vim'
Plug 'klen/python-mode'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree'
Plug 'slim-template/vim-slim'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'wavded/vim-stylus'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Those apparently require Python support???
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()

nnoremap <C-u> :UndotreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set grepprg=ag\ --line-numbers\ $*
let g:clipbrdDefaultReg = '+'

" Persistent undo history
let &undodir = expand('~/.config/nvim/undo')
set undofile

" Central location for backup and swap files
let &backupdir = expand('$XDG_RUNTIME_DIR')
let &directory = expand('$XDG_RUNTIME_DIR')

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=a
set number

set ignorecase
set smartcase
set hlsearch

" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;

