" File: hubcap.vim
" Author: David Marchante (https://github.com/iovis)
" Description: Hub integration with vim
" Last Modified: June 17, 2019
if exists('hubcap_loaded') || v:version < 700
  finish
endif
let hubcap_loaded = 1

command! -nargs=0 Gprs !hub pr list
command! -nargs=1 -complete=customlist,hubcap#complete#pull_requests Gprc call hubcap#checkout#pull_request(<f-args>)
command! -nargs=* -complete=customlist,hubcap#complete#pull_requests Gprb call hubcap#browse#pull_request(<f-args>)

command! -nargs=1 -complete=customlist,hubcap#complete#branches Gco !git checkout <args>
