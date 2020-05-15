" Init Pathogen
execute pathogen#infect()
" NERDTree width
let g:NERDTreeWinSize=50
" NERDTree minimal UI
let g:NERDTreeMinimalUI=1
" Open NERDTree on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close VIM If NERDTree is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Toggle NERDTree with F3
nmap <silent> <F3> :NERDTreeToggle<CR>
" Set explorer style to tree
let g:netrw_liststyle=3
syntax on
set incsearch!
set nohlsearch
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set nowritebackup
set backspace=indent,eol,start
set t_Co=256
set background=dark
colorscheme apprentice 
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight LineNr ctermfg=DarkGrey ctermbg=NONE
hi CursorLine term=bold cterm=bold guibg=Grey40
" Handlebars syntax highlighting
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
" Formality syntax highlighting
au BufRead,BufNewFile *.fm set ft=fmcore syntax=fmcore
" Reason syntax highlighting
au BufRead,BufNewFile *.re set ft=reason syntax=reason

set shortmess+=A
