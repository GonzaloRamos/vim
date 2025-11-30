vim9script

import "../plugin/phpmanuals.vim"

command -buffer -nargs=1 PHPReference call phpmanuals.PhpReferenceUnderCursor(<f-args>)
setlocal keywordprg=:PHPReference

# Borra el comando cuando se va del buffer y restaura keywordprg al valor
# anterior.
b:undo_ftplugin = "delcommand PHPReference | setlocal keywordprg<"
