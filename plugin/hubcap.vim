" File: hubcap.vim
" Author: David Marchante (https://github.com/iovis)
" Description: Hub integration with vim
" Last Modified: June 07, 2019
if exists('hubcap_loaded') || v:version < 700
  finish
endif
let hubcap_loaded = 1

command! -nargs=0 Gprs !hub pr list
command! -nargs=1 Gprc !hub pr checkout <args>
command! -nargs=1 -complete=customlist,hubcap#complete#branches Gco !git checkout <args>
command! -nargs=* -complete=customlist,hubcap#complete#pull_requests Gprb call hubcap#browse#pull_request(<f-args>)
