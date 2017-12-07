set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'SirVer/ultisnips'
Plugin 'suan/vim-instant-markdown'
"Plugin 'vim-syntastic/syntastic' " get this set up later, needs configuration
Plugin 'tpope/vim-surround'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on               "enable filetype indenting, plugins

syntax on                               "enable syntax highlighting
color ron                           "set colorscheme to :elflord:
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

" begin UltiSnips workaround
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

function! g:UltiSnips_Reverse()
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
        return "\<C-P>"
    endif

    return ""
endfunction

if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
endif

if !exists("g:UltiSnipsJumpBackwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<s-tab>"
endif

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
" end UltiSnips workaround

" customizing default directory plugin
let g:netrw_banner = 0 "turn off banner
let g:netrw_browse_split = 3 "open files from netrw in a new tab
let g:netrw_winsize = 25 "set default size to 25% of the screen
let g:netrw_liststyle = 3 "customize the default view of files

" customize surround plugin
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" set C/C++ compilation flags for ycm
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
