local g, opt, cmd = vim.g, vim.opt, vim.cmd

--[[ mapleader key ]]
g.mapleader = ","
cmd [[ colorscheme ayu ]]

--[[ General setup ]]
opt.encoding = 'utf-8'
opt.hidden = true
opt.clipboard = 'unnamed'
opt.mouse = 'a'
opt.cursorline = true
opt.swapfile = false

--[[ Theme ]]
opt.termguicolors = true
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_sign_column = 'bg0'

--[[ Editor ]]
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.colorcolumn = '100'
opt.splitright = true
opt.splitbelow = true
opt.showmatch = true
opt.showmode = false
opt.confirm = true

opt.wildmenu = true
opt.completeopt = {'noinsert', 'menuone', 'noselect'}
opt.autoindent = true
opt.smartindent = true
opt.scrolloff = 5
opt.laststatus = 3
opt.list = true
cmd [[set listchars=tab:▸\ ,trail:·]]

--[[ Airline ]]
g.airline_powerline_fonts = true

--[[ Tab size ]]
local tabwidth = 2

opt.expandtab = true
opt.smarttab = true
opt.softtabstop = tabwidth
opt.tabstop = tabwidth
opt.shiftwidth = tabwidth

