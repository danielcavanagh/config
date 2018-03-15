if &compatible
  set nocompatible " Be iMproved
endif

if has('nvim-0.1.5')
  set termguicolors " true 24-bit colours
endif

set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Install our plugins
if dein#load_state('~/.vim/bundles')
  filetype off

  call dein#begin('~/.vim/bundles')
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Core editor plugins
  call dein#add('Shougo/vimproc.vim', { 'build': 'make' })
  if has('nvim')
    call dein#add('Shougo/deoplete.nvim')
  endif
  call dein#add('Shougo/denite.nvim') 
  call dein#add('vim-ctrlspace/vim-ctrlspace')
  call dein#add('mbbill/undotree')
  call dein#add('editorconfig/editorconfig-vim')
  call dein#add('pelodelfuego/vim-swoop')

  " Version control and UI nicities
  call dein#add('mhinz/vim-signify')
  call dein#add('tpope/vim-fugitive')
  call dein#add('vim-airline/vim-airline')

  " Linting etc.
  call dein#add('w0rp/ale')
  call dein#add('Quramy/tsuquyomi')

  " Syntax highlighting et all
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('chrisbra/csv.vim')
  call dein#add('ekalinin/Dockerfile.vim')
  call dein#add('elmcast/elm-vim')
  call dein#add('othree/html5.vim')
  call dein#add('jelera/vim-javascript-syntax')
  call dein#add('elzr/vim-json')
  call dein#add('rcmdnk/vim-markdown')
  call dein#add('StanAngeloff/php.vim')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('rust-lang/rust.vim')
  call dein#add('racer-rust/vim-racer')
  call dein#add('leafgarland/typescript-vim')

  " Colors
  call dein#add('dracula/vim')
  call dein#end()

  filetype on

  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

" Color scheme choice
color vende

" Misc settings
set hidden
set lazyredraw
set cursorline
set number
set showcmd
set showmatch
set noerrorbells
set laststatus=2
set showtabline=0
set encoding=utf-8
set backupcopy=yes
set clipboard=unnamedplus " Use primary system clipboard by default, not vim one

" Tab sanity
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Search/complete related
set gdefault
set wildmenu
set incsearch
set hlsearch

" Saner splitting
set splitbelow
set splitright

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Making backups saner
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" Saner cursor style
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
set guifont=Noto\ Mono:h10

" Core settings
let mapleader = ' '
let t_Co = 256

" Airline settings
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 

" Misc. editing plugin settings
let g:ale_sign_column_always = 1
let g:vim_markdown_folding_disabled = 1
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
let g:tsuquyomi_disable_quickfix = 1
let g:swoopUseDefaultKeyMap = 0
let g:vim_markdown_folding_disabled = 1

" Rust settings
let g:racer_cmd = "~/.cargo/bin"
let g:racer_experimental_completer = 1

" Elm settings
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" Ctrl-space settings
let g:CtrlSpaceSymbols = { "CS": "#", "Sin": "SIN", "All": "ALL",
                         \ "Vis": "VIS", "File": "FILE", "Tabs": "-",
                         \ "CTab": "+", "NTM": "+", "WLoad": "|*|",
                         \ "WSave": "[*]", "Zoom": "*", "SLeft": "[",
                         \ "SRight": "]", "BM": "BM", "Help": "?",
                         \ "IV": "-", "IA": "*", "IM": "+",
                         \ "Dots": "..." }
if executable("ag")
  let g:CtrlSpaceGlobCommand = 'ag --nocolor -g ""'
endif
if executable("ack")
  let g:CtrlSpaceGlobCommand = 'ack --nocolor -g ""'
endif

" Bubbling text using arrows keys
nnoremap [e ddkP
nnoremap ]e ddp
vnoremap [e xkP`[V`]
vnoremap ]e xp`[V`]

" Keep selection after < > shifts
vnoremap < <gv
vnoremap > >gv

" Better split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Swooping keys
nnoremap <leader>/ :call Swoop()<cr>
vnoremap <leader>/ :call SwoopSelection()<cr>

" Misc. remaps
nnoremap <leader>y "*y
nnoremap <leader>p "*p

nnoremap <silent><C-p> :CtrlSpace O<CR>
nnoremap <silent><C-space> :CtrlSpace B<CR>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>ez :vsp ~/.zshrc<cr>
nnoremap <leader>ex :vsp ~/.xmonad/xmonad.hs<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
