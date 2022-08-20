require('plugins')                 -- plugin confgiuration using packer
-- make faster startup
require('impatient')

require('config.autopairs')        -- autopirs setup
require('config.barbar')
require('config.better_escape')    -- better way to escape insert mode
require('config.colorscheme')      -- setup nvim colorscheme
require('config.comment')          -- comment tool
require('config.cmp')              -- setup cmp for completions
require('config.gitsigns')         -- gitsigns setup
require('config.indent_blankline') -- setup indent_blankline plugin
require('config.key')              -- shortcuts configuration
require('config.lsp')              -- lsp setup
require('config.lualine')          -- statusline setup
require('config.neorg')            -- neorg file format
require('config.telescope')        -- telescope plugin
require('config.treesitter')       -- treesitter plugin
require('config.vimtex')
require('config.zenmode')          -- zen mode to have a distraction free env
require('defaults')                -- default options

-- start lualine
require('lualine').setup()


