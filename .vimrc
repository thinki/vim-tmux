"toggle line numbers
map <F5> <Esc>:set invnumber<CR> 

set number
"check file type
filetype on
filetype plugin on
filetype indent on

"history record line length   
set history=1000

"autoindent
set autoindent
set cindent
set smartindent

"tab width
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

"python filetype setting
autocmd filetype python setlocal tabstop=4 tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set list
set listchars=tab:▸\ 

"{} match 
set showmatch

"show cursor when editing
set ruler

"highlight search
set hlsearch

set pastetoggle=<F2>

"increamental search 
set incsearch

"auto backup
if has("vms")
    set nobackup
else
    set backup
endif

"color scheme
set t_Co=256
colorscheme monokai_origin
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81
hi Type ctermfg=81 cterm=none 
"hi Structure ctermfg=118 cterm=none
hi Macro ctermfg=197 cterm=none
hi PreCondit ctermfg=161 cterm=bold
set cursorline
"hi CursorLine cterm=bold term=bold ctermbg=white

hi MyTagListFileName	ctermfg=197	
hi MyTagListTagName		ctermfg=81
hi MyTagListTitle		ctermfg=154
hi MyTagListComment		ctermfg=197
hi MyTagListTagScope	ctermfg=197

"""""""""""""""""Taglist设置"""""""""""""""""         
map <F3> : Tlist<CR>  ""按下F3就可以呼出了
"let Tlist_Auto_Open = 1  "open taglist by default
let Tlist_Ctags_Cmd = '/usr/bin/ctags'  "ctags bin path
let Tlist_Use_Right_Window=0 "0: display on the left 1:display on the right
let Tlist_Show_One_File=0 "display the tag for the current file
let Tlist_File_Fold_Auto_Close=1 "
let Tlist_Exit_OnlyWindow=1 "auto exit
"let Tlist_Use_SingleClick= 1    "
"let Tlist_Process_File_Always=0  "

"tmux background compatibility
"if exists('$TMUX')
"	set term=screen-256color
"endif

"powerline status
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
