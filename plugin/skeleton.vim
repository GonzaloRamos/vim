vim9script

const SKELETON_DIR = fnamemodify($MYVIMRC, ':h') .. "/skeleton"

if !isdirectory(SKELETON_DIR)
    echo SKELETON_DIR .. " No es un directorio y el comando Skeleton no va a poder usarse"
endif

def SkeletonComplete(argLead: string, cmdLine: string, cursorPos: number): list<string>
    var skeleton_files = globpath(SKELETON_DIR, "**/*", 0, 1)
    
    if !empty(argLead)
        return matchfuzzy(skeleton_files, argLead)
    endif
    return skeleton_files
enddef

def SkeletonRead(skel: string)
    execute 'read ' .. skel
enddef

command! -nargs=? -complete=customlist,SkeletonComplete Skeleton SkeletonRead(<q-args>)
