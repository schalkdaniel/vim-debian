set backupdir=~/.vim_files/.backup/,.,~/tmp,/var/tmp,/tmp
set directory=~/.vim_files/.swp/,.,~/tmp,/var/tmp,/tmp
set undodir=~/.vim_files/.undo/,.,~/tmp,/var/tmp,/tmp

set ve+=onemore		" Enable cursor to be AFTER the last letter
set noequalalways " Do not always resize panes after closing one

set number		" Add line numbers to files
" set spell          	" Enable spell checking

set tabstop=2        	" Defines the blanks of a tab
set shiftwidth=2	    " Defines how many blanks a shift (<C-t> or <C-d>) is
set expandtab		      " Use spaces instead of tabs!
set autoindent        " Should do indenting automatically
set smartindent		    " Should do indenting automagically
set cindent          	" Indenting for C type languages
set showcmd           " Shows the commands in the lower right corner
set mouse=a
set spell
set relativenumber
set hlsearch

set clipboard=unnamedplus
set backspace=indent,eol,start

autocmd BufWritePre * %s/\s\+$//e 	" Trim trialing white spaces

" Custom command to enter a new line in normal mode
map <Enter> O<ESC>

" PLUGIN SECTION
" ===========================================================

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" R plugin: https://github.com/jalvesaq/Nvim-R
Plug 'jalvesaq/Nvim-R'

" Efficient move commands: https://github.com/matze/vim-move
Plug 'matze/vim-move'

" Easy  editing of parantheses:
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'

call plug#end()


" Nvim-R:
" ------------------------

" Set window with and height of Nvim-R:
if winwidth(0) < 1200
	let R_rconsole_width = winwidth(0)
else
	let R_rconsole_width = winwidth(0) / 2
endif

let R_pdfviewer = 'evince'
let g:R_assign = 0                  " Don't create the assign arrow when typing "_"
let R_args = ['--no-save', '--no-restore-data', '--quiet']
" Send line to R console
autocmd VimEnter * map <C-l> 0\lj


" vim-move:
" -----------------------

" Set Strg as key to move up/down lines (vim-move):
let g:move_key_modifier = 'C'

