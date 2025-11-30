vim9script

##################################################################################
#
#  DESCRIPCION:
#
#  Genera un comando llamado "MakeTags" que invoca el comando ctags que genera
#  el archivo tags. Tiene configurado los tipos de archivos a buscar segun el
#  proyecto
#
#  TODO:
#  - [ ] La función se ejecuta únicamente si estas en un buffer con un archivo
#  .ts y debería ser por proyecto mas que por buffer.
#
##################################################################################

if exists('g:loaded_maketags_plugin')
  finish
endif

g:loaded_maketags_plugin = 1

def MakeTags(): void
	if expand('%:e') == 'ts'
		!ctags -R --languages=TypeScript --exclude=*.js --exclude=*.jsx --exclude=*.tsx --exclude=*.json .
		echo "Tags generated for TypeScript files."
	else
		echo "Current file is not implemented yet to MakeTags functions."
	endif
enddef

command MakeTags call MakeTags()
