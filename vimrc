vim9script

# Carga defaults.vim. Si skip_default_vim esta seteado, no lo carga.
unlet! g:skip_defaults_vim
source $VIMRUNTIME/defaults.vim

# Este paso es necesario por que configs no es un directorio estandard de vim
# en el que busca automaticamente.
:runtime! config/*.vim
