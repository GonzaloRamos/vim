vim9script

# Declara como se debe leer los errores del compilador de TypeScript
setlocal errorformat=%f\\(%l\\,%c\\):\ %m

let b:undo_ftplugin = 'setlocal errorformat< | nunmap <buffer> <localleader>t'
