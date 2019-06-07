" File: hubcap.vim
" Author: David Marchante (https://github.com/iovis)
" Description: Hub integration with vim
" Last Modified: June 07, 2019
if exists('hubcap_loaded') || v:version < 700
  finish
endif
let hubcap_loaded = 1

command! -nargs=1 -complete=customlist,hubcap#complete#branches Gco !git checkout <args>
