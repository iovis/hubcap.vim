" Converts #123 into 123
function! hubcap#parse#pull_request(pr) abort
  return trim(a:pr, '#')
endfunction
