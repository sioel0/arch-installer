local M = {}

function M.setup()
  local status_ok, alpha = pcall(require, "alpha")
  if not status_ok then
      return
  end

  local dashboard = require("alpha.themes.dashboard")
  local function header()
    return {
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[  ███████ ██      ███    ██ ██    ██ ██ ███    ███   ]],
      [[  ██      ██      ████   ██ ██    ██ ██ ████  ████   ]],
      [[  ███████ ██      ██ ██  ██ ██    ██ ██ ██ ████ ██   ]],
      [[       ██ ██      ██  ██ ██  ██  ██  ██ ██  ██  ██   ]],
      [[  ███████ ███████ ██   ████   ████   ██ ██      ██   ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
      [[                                                     ]],
    } 
  end
  dashboard.section.header.val = header()

  dashboard.section.buttons.val = {
    dashboard.button("<Space> n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("<Space> f", "  Find File", ":Telescope find_files <CR>"),
    dashboard.button("<Space> c", "  Configuration", ":e $MYVIMRC <CR>"),
    dashboard.button("<Space> q", "  Quit Neovim", ":qa<CR>"),
  }

  local function footer()
    -- Number of plugins
    local datetime = os.date "%d-%m-%Y  %H:%M:%S"

    -- Quote
    local fortune = require "alpha.fortune"
    local quote = table.concat(fortune(), "\n")

    return datetime .. quote
  end

  dashboard.section.footer.val = footer()

  dashboard.section.footer.opts.hl = "Constant"
  dashboard.section.header.opts.hl = "Include"
  dashboard.section.buttons.opts.hl = "Function"
  dashboard.section.buttons.opts.hl_shortcut = "Type"
  dashboard.opts.opts.noautocmd = true

  alpha.setup(dashboard.opts)

end

return M
