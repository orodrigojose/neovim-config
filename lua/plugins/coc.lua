local g, cmd = vim.g, vim.cmd

--[[ Ale ]]
g.ale_fixers = {'prettier', 'eslint'}
g.ale_echo_msg_error_str = 'E'
g.ale_echo_msg_warning_str = 'W'
g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
g.ale_sign_error = ''
g.ale_sign_warning = ''
g.ale_completion_enabled = false

--[[ Coc ]]
g.coc_global_extensions = {
  'coc-json', 'coc-emmet', 'coc-html',
  'coc-css', 'coc-tsserver', 'coc-pyright',
  'coc-eslint', 'coc-prettier', 'coc-clangd',
}

cmd [[
  nmap <leader>rn <Plug>(coc-rename)

  nmap <silent> [g <Plug>(coc-diagnostic-prev)
  nmap <silent> ]g <Plug>(coc-diagnostic-next)

  inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

  inoremap <silent><expr> <C-_> coc#refresh()
  xmap <silent> <leader>o <Plug>(coc-codeaction-selected)
  nmap <silent> <leader>o <Plug>(coc-codeaction-selected)
]]

