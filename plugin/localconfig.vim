vim9script

############################################################################
#
# DESCRIPCION:
#
# Carga automaticamente, si existe, un archivo .config.vim en el directorio
# actual.
#
############################################################################

if exists('g:loaded_localconfig_plugin')
  finish
endif

g:loaded_localconfig_plugin = 1

var currentcwd = getcwd()
var localConfigFile = '.config.vim'

if findfile(localConfigFile, currentcwd) != ""
	execute "source " .. currentcwd .. "/" .. localConfigFile
endif
