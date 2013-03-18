function! MarkdownFolds()
  let thisline = getline(v:lnum)
  if match(thisline, '^"') >= 0
    return ">1"
  elseif match(thisline, '^""') >= 0
    return ">2"
  else
    return "="
  endif
endfunction
au BufEnter *.vim setlocal foldmethod=expr
au BufEnter *.vim setlocal foldexpr=MarkdownFolds()
