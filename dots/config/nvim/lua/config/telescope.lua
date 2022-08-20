-- setup invocation keybindings
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy({}))<CR>", opts)
keymap("n", "<leader>r", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", opts)
keymap("n", "<leader>t", "<cmd>lua require('telescope.builtin').treesitter()<CR>", opts)

-- telescope configuration
local cmp_status_ok, tel = pcall(require, "telescope")
if not cmp_status_ok then
  return
end

local actions = require('telescope.actions')
tel.setup({
  defaults = {
    mappings = {
      i = {
        ["jk"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  }
})
