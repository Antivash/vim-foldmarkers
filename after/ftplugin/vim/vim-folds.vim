function! MarkdownFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^"-') >= 0
    return ">1"
  elseif match(thisline, '^"--') >= 0
    return ">2"
  else
    return "="
  endif
endfunction
setlocal foldmethod=expr
setlocal foldexpr=MarkdownFolds()

function! MarkdownFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).''
endfunction
setlocal foldtext=MarkdownFoldText()
