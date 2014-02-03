""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""

" Get out of vi's compatible mode
set nocompatible

" How many lines of history
set history=500

" Set to auto read when a file is changed from the outside
"set autoread

" Set map leader
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <LEADER>w :w<CR>

" Fast reloading of the .vimrc
map <LEADER>s :source ~/.vimrc<CR>

" Fast editing of .vimrc
map <LEADER>e :e! ~/.vimrc<CR>

" When .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" Show commands as they are typed
set showcmd

""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
""""""""""""""""""""""""""""""""""""""""""""""""""
" Use UTF-8
set encoding=utf-8

" Save file as UTF-8
set fileencoding=utf-8

" List of charsets to recognize
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1

" Terminal encoding
set termencoding=utf-8

" Treat ambiguous characters as full width
set ambiwidth=double

""""""""""""""""""""""""""""""""""""""""""""""""""
" Colours and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256

" Enable syntax highlighting
syntax enable

" Set colour scheme
colorscheme molokai

" Highlight current line in insert mode
function! s:EnterInsert()
  set cursorline
endfunction

function! s:LeaveInsert()
  set nocursorline
endfunction

autocmd InsertLeave * call s:LeaveInsert()
autocmd InsertEnter * call s:EnterInsert()

" Set cursorline
"hi cursorline cterm=none ctermbg=darkgrey

" Omni menu colors
"hi Pmenu ctermbg=darkgrey
"hi PmenuSel ctermbg=darkblue

" Pattern matching
"hi MatchParen ctermbg=11


""""""""""""""""""""""""""""""""""""""""""""""""""
" File formats
""""""""""""""""""""""""""""""""""""""""""""""""""
" Favourite file formats
set ffs=unix,dos

nmap <LEADER>fd :se ff=dos<CR>
nmap <LEADER>fu :se ff=unix<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetypes
""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugin
filetype plugin on
filetype indent on

autocmd! BufRead,BufNewFile *.conf set filetype=config

" Vala
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

""""""""""""""""""""""""""""""""""""""""""""""""""
" Interface
""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on wild menu
set wildmenu

" Show current position
set ruler

" Show line number
set number

" Don't redraw while running macros (faster)
"set lz

" Change buffer without saving
set hid

" Set backspace
set backspace=start,indent,eol

" Which keys to wrap
set whichwrap+=<,>,h,l

" Default value
set magic

" No sound for errors
set noerrorbells

" Show matching brackets
set showmatch

" Status line
set laststatus=2
"set statusline=%<%f%<%{FileTime()}%<%h%m%r%=%-20.(line=%03l,col=%02c%V,totlin=%L%)\%h%m%r%=%-30(,BfNm=%n%Y%)\%P\*%=%{CurTime()}
set rulerformat=%15(%c%V\ %p%%%)
"set cmdheight=2

" The following command scrolls the text so that (when possible) there are
" always at least five lines visible above the cursor, and five lines visible
" below the cursor: 
set scrolloff=5

" change the terminal's title
set title

""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case
set ignorecase

" Show first match
set incsearch

" Highlight search results
set hls

" Default value
set wrapscan

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabs
""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap cr= $F=a<SPACE><ESC>lcf;
"nmap cl= $F=hc^


" Hot keys
nmap <C-T>c :tabnew<CR>
nmap <C-T>k :tabclose<CR>
nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>

set switchbuf=usetab

" Always show tab line
set stal=2


""""""""""""""""""""""""""""""""""""""""""""""""""
" Misc
""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.js,*.htc,*.c,*.tmpl,*.css inoremap $c /**<CR>  **/<ESC>O

" Remove indenting on empty lines
noremap <F2> :%s/\s*$//g<CR>:noh<CR>''

" Big5
noremap <LEADER>b :e ++enc=big5<CR>:set tenc=big5<CR>

" UTF-8
noremap <LEADER>u :e ++enc=utf-8<CR>:set tenc=utf-8<CR>

map <Shift-CR> O<Esc>
map <CR> o<Esc>

" Set ： and ; same as :
nnoremap ; :
nnoremap ： :

""""""""""""""""""""""""""""""""""""""""""""""""""
" Temp and Backups
""""""""""""""""""""""""""""""""""""""""""""""""""
set backup

set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set nowb
set noswapfile
set noar

""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
""""""""""""""""""""""""""""""""""""""""""""""""""
" Default values
set foldenable
set fdl=0
"nnoremap <SPACE> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Text
""""""""""""""""""""""""""""""""""""""""""""""""""
set noexpandtab

set lbr

set wrap

set autoindent
set smartindent
set cindent
set showmode

set tabstop=4
set shiftwidth=4

" Then, when in insert mode, ready to paste, if you press <F2>, Vim will
" switch to paste mode, disabling all kinds of smartness and just pasting a
" whole buffer of text. Then, you can disable paste mode again with another
" press of <F2>.
set pastetoggle=<F2>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell check
""""""""""""""""""""""""""""""""""""""""""""""""""
set nospell
set spelllang=en

hi clear SpellBad

"map <LEADER>sn ]s
"map <LEADER>sp [s
"map <LEADER>sa zg
"map <LEADER>s? z=

map <F5> :set spell!<CR><BAR>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickfix
""""""""""""""""""""""""""""""""""""""""""""""""""
" command -bang -nargs=? QFix call QFixToggle(<bang>0)

" function! QFixToggle(forced)
"     if exists("g:qfix_win") && a:forced == 0
"         cclose
"         unlet g:qfix_win
"     else
"         copen 10
"         let g:qfix_win = bufnr("$")
"     endif
" endfunction

" nnoremap <leader>q :QFix<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""

    """"""""""""""""""""""""""""""""""""""""
    " Taglist
    """"""""""""""""""""""""""""""""""""""""
    let Tlist_Ctags_Cmd = '/usr/local/bin/exctags'
    let Tlist_Auto_Update = 1
    let Tlist_Sort_Type = "name"
    let Tlist_WinWidth = 30
    let Tlist_Show_One_File = 0
    let Tlist_Exit_OnlyWindow = 1
    let Tlist_Use_SingleClick = 1
    let Tlist_File_Fold_Auto_Close = 1
    let Tlist_Process_File_Always = 1
    let Tlist_Enable_Fold_Column = 0
    let Tlist_Use_Right_Window = 1
    nnoremap <F3> :TlistToggle<CR>

    """"""""""""""""""""""""""""""""""""""""
    " Cscope
    """"""""""""""""""""""""""""""""""""""""

    """"""""""""""""""""""""""""""""""""""""
    " Slippery Snippet
    """"""""""""""""""""""""""""""""""""""""
    let g:snip_start_tag = "«"
    let g:snip_end_tag = "»"
    let g:snippetsEmu_key = "<C-B>"

    """"""""""""""""""""""""""""""""""""""""
    " Nerd Tree
    """"""""""""""""""""""""""""""""""""""""
    " How to use?
    "
    " o       Open selected file, or expand selected dir
    " go      Open selected file, but leave cursor in the NERDTree
    " t       Open selected node in a new tab
    " T       Same as 't' but keep the focus on the current tab
    " <tab>   Open selected file in a split window
    " g<tab>  Same as <tab>, but leave the cursor on the NERDTree
    " !       Execute the current file
    " O       Recursively open the selected directory
    " x       Close the current nodes parent
    " X       Recursively close all children of the current node
    " e       Open a netrw for the current dir
    nnoremap <F4> :NERDTreeToggle<CR>

    """"""""""""""""""""""""""""""""""""""""
    " Nerd Commenter
    """"""""""""""""""""""""""""""""""""""""
    let g:NERDMapleader = ";c"

    """"""""""""""""""""""""""""""""""""""""
    " SuperTab
    """"""""""""""""""""""""""""""""""""""""
    let g:SuperTabDefaultCompletionType = "<C-N>"

    """"""""""""""""""""""""""""""""""""""""
    " OmniCppComplete
    """"""""""""""""""""""""""""""""""""""""
    map <F6> :!exctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

set listchars=tab:>-,trail:-,eol:$,nbsp:%,extends:>,precedes:<

" PHP
let php_sql_query=1
let php_htmlInStrings=1
let php_folding=1
let php_noShortTags=1

set nomodeline
xmap <Leader>s <Plug>Vsurround

""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen.vim
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
