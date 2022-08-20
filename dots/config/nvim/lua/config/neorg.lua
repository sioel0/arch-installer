local status_ok, neorg = pcall(require, 'neorg')
if not status_ok then
  return
end

neorg.setup{
  load = {
    ['core.defaults'] = {},
    ['core.norg.dirman'] = {
      config = {
        workspaces = {
          home = '~/notes/home',
          uni = '~/notes/uni',
          work = '~/notes/work'
        }
      }
    },
    ['core.norg.completion'] = {
      config = {
        engine = 'nvim-cmp'
      }
    },
    ['core.presenter'] = {
      config = {
        zen_mode = 'truezen'
      }
    },
    ['core.norg.concealer'] = {
      config = {
        conceal = false,
        dim_code_blocks = {
          content_only = false
        }
      }
    }
  }
}

local opts = { noremap = true, silent = true }

-- shorten keymap function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>ps", "<cmd>Neorg presenter start<CR>", opts)
keymap("n", "<leader>pc", "<cmd>Neorg presenter close<CR>", opts)
