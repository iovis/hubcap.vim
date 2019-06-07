function! hubcap#browse#pull_request(...) abort
  let l:pr = get(a:, 1, s:current_branch_pull_request())

  if empty(l:pr)
    throw 'No PRs for the current branch'
  endif

  silent execute '!hub browse -- pull/' . hubcap#parse#pull_request(l:pr)
endfunction

function! s:current_branch_pull_request() abort
  let l:prs = sort(systemlist("hub pr list -f '%i%n' -h $(git rev-parse --abbrev-ref HEAD)"))
  return get(l:prs, 0, '')
endfunction
