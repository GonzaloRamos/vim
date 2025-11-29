vim9script

# ==================COMANDOS CUSTOM=====================

g:mapleader = " " # <Leader>

# Abre netrw 
map <Leader>pv :Ex <CR>

# Abre este archivo
map <Leader>vc :e $MYVIMRC <CR>  

# Recarga la configracion
map <Leader>vr :source $MYVIMRC <CR>  

# Shortcut para buscar archivos
map <Leader>pf :find 

# Shortcut correr el compilador / linter segun sea el caso
map <Leader>pm :make <CR>

map <F2> :echo "Hello World!" <CR>
