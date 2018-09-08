" {{{1 Uncategorized
" Make any buffer able to be hidden even if not saved
set hidden
" no word wrap:
set nowrap
set diffopt+=iwhite,vertical
" Easier to launch new splits:
set splitbelow
set splitright
" When opening new files, look recursively into subdirectories
set path+=**
" The langugages I speak
set spelllang=en,he
filetype plugin on
" Default tex flavor
let g:tex_flavor = 'latex'

" {{{1 keys timeout
set timeoutlen=1000
" make the return to normal mode with escape not take too long and confuse me:
set ttimeoutlen=0

" {{{1 search
" highlight search during typing
set nohlsearch
" incremental search
set incsearch
" incremental substitution
if exists('&inccommand')
	set inccommand=split
end
" Smart case: case-sensitive when uppercase, otherwise - not.
set ignorecase
set smartcase

" {{{1 UI
" Colors
set autoread
syntax enable
colorscheme my
if expand('$DISPLAY') !=# '$DISPLAY'
	set termguicolors
end
set background=dark
" Always display the tabline, even if there is only one tab:
set showtabline=2
set list
if expand('$DISPLAY') !=# '$DISPLAY'
	set showbreak=ˆ
	set listchars=tab:›\ ,trail:-,extends:»,precedes:«,eol:¬
else
	set showbreak=^
	set listchars=tab:>\ ,trail:-,extends:»,precedes:«,eol:¬
end
" Always display the statusline in all windows:
set laststatus=2
" Hide the default mode text (e.g. -- INSERT -- below the statusline):
set noshowmode
" enable mouse actions
set mouse=a
" folds
set foldenable
set foldmethod=indent
set foldcolumn=2
" set lazyredraw only on ssh
if expand('$SSH_CLIENT') !=# '$SSH_CLIENT'
	set lazyredraw
endif

" {{{1 tab's and indentation preferences:
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set preserveindent
filetype indent on

" {{{1 backup and restore
set backupdir=~/.local/share/nvim/tmp//
set directory=~/.local/share/nvim/tmp//
set viewdir=~/.local/share/nvim/view//
" restore-view setting:
set viewoptions=folds,cursor
" mks settings:
set sessionoptions=folds,help,resize,tabpages,winpos,winsize

" {{{1 Load local configuration
" Load nvimrc's in the directory the file is being launched from.
set modeline
set exrc
set secure

" {{{1 runtime
" Add vifm runtime files to rtp:
if isdirectory('/usr/share/vifm/vim')
	set runtimepath+=/usr/share/vifm/vim
end
if isdirectory('/usr/share/vim/vimfiles')
	set runtimepath+=/usr/share/vim/vimfiles
end
" External Plugins - use pathogen only for old versions of vim
if !exists(':packadd')
	runtime bundle/pathogen/autoload/pathogen.vim
	let g:pathogen_disabled = ['']
	execute pathogen#infect()
end
if has('nvim') 
	runtime only.nvim
else
	runtime only.vim
end

" {{{1 Modeline
" vim: foldmethod=marker
