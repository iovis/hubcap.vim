function! hubcap#checkout#pull_request(pr) abort
  silent execute '!hub pr checkout ' . hubcap#parse#pull_request(a:pr)
endfunction
