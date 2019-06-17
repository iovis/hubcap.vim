" Turn '#2798 master|rmd-2978 Make AA use less memory DB'
" into '2798'
function! hubcap#parse#pull_request(pr) abort
  let l:pr = split(a:pr)[0]
  return trim(l:pr, '#')
endfunction
