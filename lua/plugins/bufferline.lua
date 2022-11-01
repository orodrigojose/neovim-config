local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

set("n", "<Leader>.", ":bnext <CR>", ns)
set("n", "<Leader>,", ":bprevious <CR>", ns)
set("n", "<A-.>", ":bnext <CR>", ns)
set("n", "<A-,>", ":bprevious <CR>", ns)

set("n", "<A-f>", ":BufferLineMovePrev <CR>", ns)
set("n", "<A-j>", ":BufferLineMoveNext <CR>", ns)
set("n", "<C-l>", ":BufferLineTogglePin <CR>", ns)
set("n", "<A-d>", ":BufferLinePickClose <CR>", ns)

require("bufferline").setup{
  options = {
    mode = "buffers",
    numbers = "ordinal",
    tab_size = 32,
    show_close_icon = true,
    show_tab_indicators = true,
    separator_style = 'thick',
    offsets = {{
      filetype = "nerdtree",
      text = "NERDTree",
      highlight = "Directory",
      text_align = "center"
    }}
  }
}
