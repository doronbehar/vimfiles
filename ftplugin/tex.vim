command! TikzSetAutoCmdToConvertToSVG autocmd BufWritePost <buffer> execute('silent !pdf2svg ' . expand('%:r') . '.pdf ' . expand('%:r') . '.svg')
if has('nvim')
	let g:vimtex_compiler_progname = 'nvr'
endif
omap ysc <plug>(vimtex-cmd-create)
xmap ysc <plug>(vimtex-cmd-create)
nmap ysc <plug>(vimtex-cmd-create)
let g:tex_flavor = 'latex'
let g:vimtex_fold_enabled = 1
let g:vimtex_fold_types = {
			\	'envs' : {
			\		'blacklist' : [
			\			'hebrew',
			\			'english'
			\		]
			\	}
			\}
