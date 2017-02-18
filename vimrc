" Use Vim settings, rather then Vi settings (much better!)
" This must be first, because it changes other options as a side effect.
set nocompatible

"set pathogen stuff .. poor man's vim package manager
execute pathogen#infect()

"reload doc files everytime something new is installed
call pathogen#helptags()

"set background=dark
"colorscheme base16-default

" enable syntax processing
syntax on

" Enable filetype rules
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

"Let python highlight all
let python_highlight_all=1

"set mapleader
let mapleader = ","

" ================== General config ====================

set wrap
set ruler						""Always show current position
set cursorline					"highlight current line
set number						"Line numbers are good
set backspace=indent,eol,start	"Allow backspace in insert mode
set history=1000				"Store lots of :cmdline history
set showmode					"Show current mode down the bottom
set showcmd						"Show unfinished commands
set hidden						"Set hidden, put the current buffer to the background.
set lazyredraw					"good for performance
set autochdir					"Go to the current directory
set magic 						"For regular expressions turn magic on
set autoread					"Reload files changed outside vim
set copyindent					"copy previous indent on enter
set title 						"To make your xterm inherit the title from Vim
set scrolloff=3					"Just get rid of some vim annoyances

" ================ Turn Off Swap Files ==============
set noswapfile					"Swap files are a nuisance
set nobackup					"Backup files are a nuisance
set nowb

"enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu
set wildmode=list:longest

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searchin.
set smartcase       " unless we type a capital

"Space open/closes folds
nnoremap <space> za

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Indentation
set smartindent
set autoindent
set shiftwidth=4
set softtabstop=4 " number of spaces in tab when editing
set tabstop=4 " number of visual spaces per TAB
set expandtab " tabs are spaces
set encoding=utf-8
set textwidth=79

" folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" space open/closes folds
nnoremap <space> za

" move vertically by visual line -- won't jump wrapped lines
nnoremap j gj
nnoremap k gk

" jk is escape
inoremap jk <esc>				"It's closer and more convenient

" Fast saving
nmap <leader>w :w!<cr>

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"enable inline spellcheck
"set spell
"set spelllang=en

"Open ag.vim     silver searcher .. the beast of all code searchers!!!
nnoremap <leader>a :Ag

"The % key will switch between opening and closing brackets. By sourcing matchit.vim
runtime macros/matchit.vim

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

"  split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Powerline setup
set laststatus=2 "ensure that Powerline is always shown
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1

"System clipboard support # basically paste anything from anywhere!
set clipboard=unnamedplus

" toggle paste mode (to paste properly indented text) Now you can hit F2 to temporarily suspend auto-indenting and paste a block of code properly. Then hit F2 again to toggle it back to the default settings.
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

"Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

"Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Youcomplete me stuff
let g:ycm_auto_trigger = 1
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"set list listchars=tab:\ \ ,trail:· "show white spaces

let g:powerline_pycmd = "py3"

let g:airline#extensions#tabline#enabled = 1
nnoremap <F5> :GundoToggle<CR>
