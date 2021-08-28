" vundle environment
set rtp+=~/.vim/bundle/Vundle.vim

" plugin name must be set between vundle#begin() and vundle#end()
call vundle#begin()
Plugin 'vim-scripts/taglist.vim'
Plugin 'mbbill/code_complete'
Plugin 'sickill/vim-monokai'
"Plugin 'wesleyche/Trinity'
Plugin 'wesleyche/SrcExpl'
Plugin 'scrooloose/nerdtree'
Plugin 'simplyzhao/cscope_maps.vim'
Plugin 'Yggdroot/LeaderF'
Plugin 'hari-rangarajan/CCTree'
Plugin 'tczengming/autoload_cscope.vim'
Plugin 'tpope/vim-fugitive.git'
call vundle#end()

nnoremap <silent> <F3> :set number!<CR>
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <F9> :TlistToggle<CR>
set splitright
set splitbelow
let g:NERDTreeWinPos="right"
let g:Lf_ShortcutF = '<C-P>'
let g:Lf_UseVersionControlTool = 0
" let g:Lf_RecurseSubmodules = 1


"tagList自动打开
let Tlist_Auto_Open=1
"只显示当前文件的tags
let Tlist_Show_One_File=1
"设置taglist宽度
let Tlist_WinWidth=30
"tagList窗口是最后一个窗口，则退出Vim
let Tlist_Exit_OnlyWindow=1
"在Vim窗口左侧显示taglist窗口
let Tlist_Use_Left_Window=1

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
set tabstop=8
set softtabstop=8
set shiftwidth=8
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
colorscheme monokai

" my color scheme patch
" function match
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81 guifg=#a6e22e guibg=NONE gui=italic
" type color
hi Type ctermfg=81 cterm=none
"hi Structure ctermfg=118 cterm=none
" macro color
hi Macro ctermfg=197 cterm=none
hi PreCondit ctermfg=161 cterm=bold
hi comment ctermfg=2
set cursorline
"hi CursorLine cterm=bold term=bold ctermbg=white

"tmux background compatibility
"if exists('$TMUX')
"	set term=screen-256color
"endif

" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256

let g:minBufExplForceSyntaxEnable = 1

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

hi ModeMsg ctermfg=Green
