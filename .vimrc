set nocompatible              " required

filetype indent plugin on               "enable filetype indenting, plugins

syntax on                               "enable syntax highlighting
color pablo                             "set colorscheme
set wildmenu                            "set command line completion
set wildmode=longest:full
set magic                               "set regex to grep mode
set lazyredraw                          "set lazyredraw, no screen refresh with macros
set showmatch                           "set case-insensitive matching
set ruler                               "show line number on bar
set laststatus=2                        
set hlsearch                            "highlight search results
set nohlsearch                          "turn off highlighting for searched expressions
set title                               "show title
set number                              "show line numbers 
set smarttab                            "tab and backspace are smarter
set expandtab                           "set tabs to spaces
set history=200
set shiftwidth=4                        "regulate how tab works
set tabstop=4
set softtabstop=4
set shiftround                          "always round indent to multiple shiftwidths
set copyindent                          "use existing indents for new indents
set preserveindent                      "save indent structure
set ai                                  "set autoindent
set si                                  "smart indent
set wrap                                "enable line wrap
set autoread                            "watch for file changes
set incsearch                           "Incremental search
set smartcase                           "smart case matching
set showcmd                             "show partial command in status line
let python_highlight_all=1
set omnifunc=syntaxcomplete#Complete
set completeopt=longest
set completefunc=longest:menu

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


au BufNewFile,BufRead *.js,*.html,*.css,*.scss,*.yml,*.yaml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set autoindent | 
    \ set expandtab |


" customizing default directory plugin
let g:netrw_banner = 0 "turn off banner
let g:netrw_browse_split = 3 "open files from netrw in a new tab
let g:netrw_winsize = 25 "set default size to 25% of the screen
let g:netrw_liststyle = 3 "customize the default view of files
