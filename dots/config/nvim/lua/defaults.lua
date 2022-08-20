local options = {

  -- setup the cursor as a block
  guicursor = "",

  -- setup numbers
  nu = true,
  relativenumber = true,
  numberwidth = 4,

  -- setup default tab size
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  hlsearch = false,
  incsearch = true,

  -- turn on smart indentation
  smartindent = true,

  -- don't wrap lines at the end of terminal
  wrap = false,

  -- default options
  clipboard = "unnamedplus",
  fileencoding = "utf-8",
  ignorecase = true,
  mouse = "a",
  splitbelow = true,
  splitright = true,
  updatetime = 300,
  cursorline = true,
  scrolloff = 8,
  sidescrolloff = 8,
  cmdheight = 2,
  termguicolors = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- make words split from - interpreted as single word
vim.cmd [[set iskeyword+=-]]
