vim9script

# Carga defaults.vim. Si skip_default_vim esta seteado, no lo carga.
unlet! g:skip_defaults_vim
source $VIMRUNTIME/defaults.vim

# config no es un directorio estandard de vim, llamo explicitamente para que
# lo lea
runtime! config/**/*.vim
runtime ftplugin/man.vim
