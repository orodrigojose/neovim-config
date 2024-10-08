
vim.opt.termguicolors = true

require'barbar'.setup({
  -- Enable/disable animations
  animation = true,

  -- Automatically hide the tabline when there are this many buffers left.
  -- Set to any value >=0 to enable.
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,
  sidebar_filetypes = {
      -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
      NvimTree = true,
      -- Or, specify the text used for the offset:
      undotree = {
        text = 'undotree',
        align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
      },
      -- Or, specify the event which the sidebar executes when leaving:
      ['neo-tree'] = {event = 'BufWipeout'},
      -- Or, specify all three
      Outline = {event = 'BufWinLeave', text = 'symbols-outline', align = 'right'},
  },
})
