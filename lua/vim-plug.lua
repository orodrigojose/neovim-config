local Plug = vim.fn['plug#']

vim.call('plug#begin')
  Plug('neoclide/coc.nvim', { branch = 'release' })
  Plug('dense-analysis/ale')

  Plug('ryanoasis/vim-devicons')
  Plug('scrooloose/nerdtree')
  Plug('tiagofumo/vim-nerdtree-syntax-highlight')

  Plug('jiangmiao/auto-pairs')
  Plug('mattn/emmet-vim')
  Plug('lukas-reineke/indent-blankline.nvim')
  --Plug('sheerun/vim-polyglot')

  Plug('vim-airline/vim-airline')
  Plug('vim-airline/vim-airline-themes')
  Plug('akinsho/bufferline.nvim')
  Plug('ap/vim-css-color')

  Plug('morhetz/gruvbox')
  Plug('dracula/vim', { as = 'dracula' })
  Plug('ayu-theme/ayu-vim')

vim.call('plug#end')

