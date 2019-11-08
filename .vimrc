autocmd! bufwritepost .vimrc nested source ~/.vimrc

" Gruvbox settings
set background=dark
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'Chiel92/vim-autoformat'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-ruby/vim-ruby'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Bundle 'marijnh/tern_for_vim'
" Plugin 'Slava/tern-meteor'
" Bundle 'Slava/vim-spacebars'
Plugin 'elzr/vim-json'
Plugin 'othree/yajs.vim'
Plugin 'othree/jsdoc-syntax.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'chemzqm/vim-jsx-improve'
Plugin 'justinj/vim-react-snippets'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nvie/vim-flake8'
" Plugin 'vim-scripts/indentpython'
Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'wakatime/vim-wakatime'
" Plugin 'tomlion/vim-solidity'
Plugin 'tpope/vim-fugitive'
Plugin 'styled-components/vim-styled-components'
Plugin 'jparise/vim-graphql'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'milch/vim-fastlane'
Plugin 'prettier/vim-prettier'
Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'flowtype/vim-flow'
" Plugin 'mattn/emmet-vim'
" Plugin 'Valloric/YouCompleteMe'
"Plugin 'klen/python-mode'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


colorscheme mango

" More Color scheme stuff
" Enable vim-airline
let g:airline#extensions#tabline#enabled = 1
" Buffer stuff
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Set the leader to ,
let mapleader=","

" Move to the next buffer
nnoremap <leader>l :bnext<CR>

" Move to the previous buffer
nnoremap <leader>h :bprevious<CR>
" Move current line up one
nnoremap - ddkP
" Move current line down one
nnoremap _ ddjP
" Make current word reverse case
nnoremap <c-u> g~iw

" Some quick shortcuts to open and source vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround string in quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Go to start and end of line
nnoremap H 0
nnoremap L $

" let g:airline_enable_branch     = 1
" let g:airline_enable_syntastic  = 1

let g:airline_theme='luna'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#ale#enabled = 1
let g:airline_section_z = '%t'

" ale linting
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}

" JavaScript stuff
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
" Don’t add empty newlines at the end of files
set binary
set noeol
let python_highlight_all=1
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
filetype indent plugin on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
" Next line converts tabs to spaces
set expandtab 
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Automatic commands
if has("autocmd")
	" Enable file type detection
	filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " treat prisma as graphql
  autocmd BufNewFile,BufRead *.prisma set syntax=graphql
endif

autocmd VimEnter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let g:NERDTreeNodeDelimiter = "\u00a0"
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeTabsToggle<CR>
" map <Leader>n <plug>NERDTreeTabsToggle<CR>

" Removes template error
"let g:syntastic_eslint_exec = '/usr/local/lib/node_modules/eslint/bin/eslint.js'
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
" let g:syntastic_html_tidy_ignore_errors = [ '<template> is not recognized!', "discarding unexpected <template>", "discarding unexpected </template>"  ]
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" highlight closing tags
let g:vim_jsx_pretty_highlight_close_tag = 1

" prettier config
let g:prettier#config#config_precedence = 'file-override'

" Syntax highlighting for C and C++
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1

" Syntax highlighting for flow
let g:javascript_plugin_flow = 1


"" Python stuff
"autocmd BufNewFile,BufRead *.py
			"\ set tabstop=4 |
			"\ set softtabstop=4 |
			"\ set shiftwidth=4 |
			"\ set textwidth=79 |
			"\ set expandtab |
			"\ set autoindent |
			"\ set fileformat=unix

"highlight BadWhitespace ctermbg=red guibg=darkred
"autocmd BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" Stupid JSON fix
autocmd BufNewFile,BufRead *.json set ft=javascript

" Buffer for front end files
"au BufNewFile,BufRead *.js, *.html, *.css, *.jsx
"\ set tabstop=2
"\ set softtabstop=2
"\ set shiftwidth=2

" ctrl+p custom ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|ios/build'
nnoremap <silent> <leader>l :ls<CR>:b<space>
