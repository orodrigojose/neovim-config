local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

--[[ Command ]]
set("n", ";", ":", { noremap = true })
set("i", "jk", "<Esc>", ns)
set("n", "<Leader>sv", ":luafile %<CR>", { noremap = true })

--[[ Editor ]]
set("n", "<Leader>a", "<Esc>ggVG<cr>", ns)
set("n", "<C-q>", ":q <CR>", ns)
set("n", "<C-s>", ":w <CR>", ns)
set("i", "<C-s>", "<Esc> :w <CR>", ns)
set("n", "<C-w>", ":wq <CR>", ns)

--[[ Change Split screen ]]
set("n", "<C-J>", "<C-W><C-J>", ns)
set("n", "<C-K>", "<C-W><C-K>", ns)
set("n", "<C-L>", "<C-W><C-L>", ns)
set("n", "<C-H>", "<C-W><C-H>", ns)

--[[ Move line ]]
set("n", "<A-Up>", ":m-2 <CR>", ns)
set("n", "<A-Down>", ":m+1 <CR>", ns)
set("v", "<A-Up>", ":m '<-2<CR>gv=gv", ns)
set("v", "<A-Down>", ":m '>+1<CR>gv=gv", ns)

--[[ Copy, Cut and Paste ]]
set("v", "<C-c>", '"+y <CR>', ns)
set("v", "<C-x>", '"+c <CR>', ns)
set("v", "<C-v>", "p <CR>", ns)
set("i", "<C-v>", "<C-r><C-o>+", ns)

--[[ Nerdtree ]]
set("i", "<C-o>", "<Esc> :NERDTreeToggle <CR>", ns)
set("n", "<C-o>", ":NERDTreeToggle <CR>", ns)
