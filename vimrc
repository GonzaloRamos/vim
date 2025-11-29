vim9script

# Carga defaults.vim. Si skip_default_vim esta seteado, no lo carga.
unlet! g:skip_defaults_vim
source $VIMRUNTIME/defaults.vim

:runtime! config/*.vim

# Cuando vim detecta .twig, setea el tipo de archivo a html para el syntax
# highlight
# au BufRead,BufNewFile *.twig set ft=html.twig.js.css

# runtime syntax/twig.vim
