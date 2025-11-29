vim9script

colorscheme habamax 
# Pone el fondo de negro de habamax
hi Normal ctermbg=16 

set mouse= 			# INHABILITA EL MOUSE
set number 			# Activa el número de linea del archivo
set relativenumber 		# Convierte los números de linea a posición relativa al cursor.
set wildmenu wildoptions=pum 	# Pone el menu autocompletado en vertical

# En insert mode, pone la línea un poco mas blanca.
# :autocmd InsertEnter * set cursorline
# :autocmd InsertLeave * set nocursorline

g:loaded_matchparen = 1 # Inhabilita el highlighting automático de (, {, [

# =================CURSOR=====================

# Cursor bloque y | con paradeo.
&t_ti = &t_ti .. "\e[1 q"
&t_SI = &t_SI .. "\e[5 q"
&t_EI = &t_EI .. "\e[1 q"
&t_te = &t_te .. "\e[0 q"

# Cursor bloque y | sin parpadeo.
# let &t_ti.="\e[2 q"
# let &t_SI.="\e[6 q"
# let &t_EI.="\e[2 q"
# let &t_te.="\e[0 q"
