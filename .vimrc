" vundle environment
set rtp+=~/.vim/bundle/Vundle.vim

" plugin name must be set between vundle#begin() and vundle#end()
call vundle#begin()
Plugin 'vim-scripts/taglist.vim'
Plugin 'mbbill/code_complete'
Plugin 'sickill/vim-monokai'
Plugin 'wesleyche/Trinity'
Plugin 'wesleyche/SrcExpl'
"Plugin 'scrooloose/nerdtree'
Plugin 'simplyzhao/cscope_maps.vim'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

" Open and close all the three plugins on the same time
nnoremap <silent> <F7> :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nnoremap <silent> <F9> :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nnoremap <silent> <F10> :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nnoremap <silent> <F12> :TrinityToggleNERDTree<CR>
" Open NERDTree
nnoremap <silent> <F5> :NERDTree<CR>

"toggle line numbers
map <F3> <Esc>:set invnumber<CR>

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
set cursorline
"hi CursorLine cterm=bold term=bold ctermbg=white

"tmux background compatibility
"if exists('$TMUX')
"	set term=screen-256color
"endif

"powerline status setting
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

