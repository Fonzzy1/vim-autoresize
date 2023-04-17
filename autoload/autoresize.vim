func! autoresize#resize()
    " we need this check because if we force resize to value less than height
    " of terminal window than status bar will be at position height + 1.
    if (winheight(0) < g:autoresize_height && index(g:autoresize_disabled_filetypes_height, &filetype) != -1)
        execute "resize " g:autoresize_height
    endif
    if (winwidth(0) < g:autoresize_width index(g:autoresize_disabled_filetypes_width, &filetype) != -1)
        execute "vertical resize " g:autoresize_width
    endif
endfunc!
