local Plug = vim.fn['plug#']

vim.call('plug#begin')
  Plug('neoclide/coc.nvim', { branch = 'release' })
  Plug('dense-analysis/ale')

  Plug('nvim-tree/nvim-web-devicons')
  Plug('romgrk/barbar.nvim')
  Plug('nvim-tree/nvim-tree.lua')

  Plug ('akinsho/toggleterm.nvim')
  Plug ('wuelnerdotexe/vim-astro')

  Plug('jiangmiao/auto-pairs')
  Plug('mattn/emmet-vim')
  Plug('lukas-reineke/indent-blankline.nvim')
  Plug('andweeb/presence.nvim')
  Plug('sheerun/vim-polyglot')

  Plug('vim-airline/vim-airline')
  Plug('ap/vim-css-color')
  Plug('ayu-theme/ayu-vim')

vim.call('plug#end')

