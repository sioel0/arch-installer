local status_ok, bufferline = pcall(require, 'bufferline')
if not status_ok then
  return
end

bufferline.setup({
  animation = true,             -- animation for barline
  auto_hide = true,             -- don't show with only one element
  tabpages = false,             -- disable number of tabpages
  closable = true,              -- enable close button
  clickable = true,             -- enable click interaction
  exclude_ft = {},
  exclude_name = {},
  icons = true,                 -- enable icon support
  icon_custom_colors = false,   -- use custom colors for the icons

  -- customize icons
  icon_separator_active = '|',
  icon_separator_inactive = '|',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- insert new buffers at end or beginning
  insert_at_end = true,
  insert_at_beginning = false,

  maximum_padding = 1,
  maximum_length = 30,

  semantic_letters = true,      -- use for buffer selection mode for picker letter
  letters = '',

  no_name_title = nil,          -- set no name buffers title
})

-- setup shortcuts
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent =true }

keymap('n', '<Space>,', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<Space>.', '<Cmd>BufferNext<CR>', opts)
keymap('n', '<Space>1', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<Space>2', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<Space>3', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<Space>4', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<Space>5', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<Space>6', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<Space>7', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<Space>8', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<Space>9', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<Space>p', '<Cmd>BufferPin<CR>', opts)
keymap('n', '<Space>c', '<Cmd>BufferClose<CR>', opts)
