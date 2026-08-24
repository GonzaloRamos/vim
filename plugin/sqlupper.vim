vim9script

############################################################################
#
# DESCRIPCION:
#
# Convierte todas las palabras de SQL a uppercase en el buffer
# 
############################################################################

if exists('g:sqlupper')
  finish
endif

g:sqlupper = 1

def SQLUpper()
    var words = [
        'and',       'or',         'not',       'in',        'is',        'null', 
        'any',       'all',        'some',      'create',    'alter',     'drop', 
        'else',      'end',        'as',        'distinct',  'asc',       'desc', 
        'grant',     'revoke',     'count',     'sum',       'avg',       'min', 
        'left',      'right',      'full',      'cross',     'on',        'using', 
        'like',      'between',    'exists',    'case',      'when',      'then', 
        'max',       'cast',       'coalesce',  'nullif',    'group',     'by', 
        'order',     'limit',      'offset',    'join',      'inner',     'outer', 
        'primary',   'foreign',    'key',       'check',     'unique',    'default',
        'select',    'insert',     'update',    'delete',    'merge',     'into', 
        'truncate',  'table',      'view',      'index',     'database',  'constraint', 
        'union',     'intersect',  'except',    'commit',    'rollback',  'savepoint', 
        'values',    'from',       'where',     'having',    
    ]
    var substit = ""
    var i = 0
    for word in words
        if i + 1 == len(words) 
            substit = substit .. '\<' .. word .. '\>'
        else
            substit = substit .. '\<' .. word .. '\>\|'
        endif
        i = i + 1
    endfor
    echo substit
    execute ':%s/\c' .. substit .. '/\U&/gce'
enddef

command! -nargs=0 SQLUpper call SQLUpper()
