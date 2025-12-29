
" The required servers
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-pairs', '@tcx4c70/coc-csharp']

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent><nowait> [d <Plug>(coc-diagnostic-prev)
nmap <silent><nowait> ]d <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent><nowait> gd <Plug>(coc-definition)
nmap <silent><nowait> gt <Plug>(coc-type-definition)
nmap <silent><nowait> gi <Plug>(coc-implementation)
nmap <silent><nowait> gr <Plug>(coc-references)

" Use K to show documentation in preview window
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

nnoremap <silent> K :call ShowDocumentation()<CR>

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <F2> <Plug>(coc-rename)

" Remap keys for apply code actions affect whole buffer
nmap <F3> <Plug>(coc-codeaction-source)
