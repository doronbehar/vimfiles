function! paragraph#set()
	set formatoptions+=a
	set formatoptions
endfunction

function! paragraph#unset()
	set formatoptions-=a
	set formatoptions
endfunction

function! paragraph#toggle()
	if match(&formatoptions, 'a') != -1
		call paragraph#unset()
	else
		call paragraph#set()
	endif
endfunction
