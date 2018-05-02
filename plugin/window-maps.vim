" {{{ windows resizing
nnoremap <C-Up> <C-W>+
nnoremap <C-Down> <C-W>-
nnoremap <C-Right> <C-W>>
nnoremap <C-Left> <C-W><
" }}}

" {{{ windows scrolling
noremap <A-i> zl
noremap <A-u> zh
noremap <A-j> jzz
noremap <A-k> kzz
" }}}

" {{{ getting out of :term windows on neovim
" credit: https://jerrington.me/posts/2016-05-02-neovim-terminal-quicknav.html
if has('nvim')
	tnoremap <C-h> <C-\><C-n><C-w>h
	tnoremap <C-l> <C-\><C-n><C-w>l
	tnoremap <C-j> <C-\><C-n><C-w>j
	tnoremap <C-k> <C-\><C-n><C-w>k
	augroup terminalAutoInsert
		au!
		autocmd WinEnter *
				\ if &buftype ==# 'terminal' |
				\ startinsert |
				\ endif
	augroup END
endif
" }}}
