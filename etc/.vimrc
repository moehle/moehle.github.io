:set hidden
:set background=dark
:set number
:colorscheme elflord
:set tabstop=2
:set softtabstop=2
:set expandtab
:set autoindent
:set shiftwidth=2
:set guioptions-=T  "remove toolbar
:syntax on
:nmap ; :
:set linebreak

au BufRead,BufNewFile *.jinja set filetype=jinja

let g:latex_to_unicode_file_types = ".*"  
let g:latex_to_unicode_file_types_blacklist = ["tex", "plaintex"]  
let g:latex_to_unicode_auto = 1 
let g:Tex_GotoError=0

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
