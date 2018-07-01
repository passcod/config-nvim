set t_Co=256

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
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'ervandew/supertab'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'itchyny/lightline.vim'
Plug 'jayflo/vim-skip'
"Plug 'junegunn/fzf', { 'dir': '~/.local/share/fzf', 'do': './install --all' } | Plug 'junegunn/fzf.vim'
Plug 'klen/python-mode'
Plug 'mattn/emmet-vim'
Plug 'mbbill/undotree'
Plug 'moll/vim-node'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ntpeters/vim-better-whitespace'
Plug 'othree/html5.vim'
Plug 'othree/yajs.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"Plug 'tpope/vim-bundler'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-projectionist'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-ruby/vim-ruby'
"Plug 'w0rp/ale'

call plug#end()

" Don't show `-- INSERT --` when Lightline already does
set noshowmode

" Enable True Colour support
"set termguicolors

" Nice understated theme
let g:lightline = { 'colorscheme': 'seoul256' }

nnoremap <C-p> :FZF<CR>

" Configure Emmet leader
"let g:user_emmet_leader_key='<C-H>'
let g:user_emmet_install_global = 1

" Use ag to respect .gitignore with Ctrl-P
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" Make sure editorconfig plays nice with others
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" Persistent undo history
let &undodir = expand('~/.config/nvim/undo')
set undofile

" Central location for backup and swap files
let &backupdir = expand('$XDG_RUNTIME_DIR')
let &directory = expand('$XDG_RUNTIME_DIR')

" Ale config
let g:ale_fixers = {
\   'javascript': ['standard'],
\}

" Disable Tar reading (conflicts with Splat! .lrp files)
let g:loaded_tarPlugin = 1
let g:loaded_tar = 1

" When using `J` or `gqip`, don't double-space sentences
set nojoinspaces

set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set mouse=a
set number
set grepprg=rg\ --line-number\ $*

set ignorecase
set smartcase
set hlsearch

" Swap ; and :
nnoremap ; :
nnoremap : ;

