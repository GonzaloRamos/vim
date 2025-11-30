vim9script

##################################################################################
#
#  DESCRIPCION:
#
#  Define una método que recibe una palabra a buscar en el manual de PHP.
#  Esta pensado para usar con comando K. Hace una busqueda exacta de la
#  palabta
#  La variable "keywordprg" se define en: ftplugin/php.vim
#
#  TODO:
#
##################################################################################

export def PhpReferenceUnderCursor(word: string)

    var cmd = 'php --rf ' .. word
    var output = systemlist(cmd)

    if v:shell_error > 0
	    cmd = 'php --rc ' .. word
	    output = systemlist(cmd)
    endif

    # Abre un buffer sin nombre y pone el foco :h enew
    enew 
    setlocal buftype=nofile bufhidden=wipe noswapfile
    call setline(1, output)

enddef
