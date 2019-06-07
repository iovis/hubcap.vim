function! hubcap#complete#branches(ArgLead, CmdLine, CursorPos) abort
  " git branch --list '*david*'
  let branch_command = 'git branch --format="%(refname:short)" --list ' . shellescape('*' . a:ArgLead . '*')
  return systemlist(branch_command)
endfunction
