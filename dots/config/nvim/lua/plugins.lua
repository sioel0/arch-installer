local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim"
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- use a protected call so we don't get errors on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- use packer inside a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return require('packer').startup(function()

  -- packer itself
  use('wbthomason/packer.nvim')

  -- useful plugins used as depencies
  use('nvim-lua/plenary.nvim')
  use('kyazdani42/nvim-web-devicons')

  -- colorscheme plugins
  use('folke/tokyonight.nvim')
  use('EdenEast/nightfox.nvim')
  use('ellisonleao/gruvbox.nvim')
  use('bluz71/vim-nightfly-guicolors')
  use('bluz71/vim-moonfly-colors')

  -- statrup screen
  use({
    'goolord/alpha-nvim',
    config = function()
      require('config.alpha').setup()
    end,
  })

  -- cmp plugin
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-nvim-lsp')

  -- luasnip for snippets
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')

  -- telescope
  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  -- lualine
  use({
    'nvim-lualine/lualine.nvim',
    requires = { { 'kyazdani42/nvim-web-devicons', opt=true } }
  })

  -- barline
  use({
    'romgrk/barbar.nvim',
    requires = { {'kyazdani42/nvim-web-devicons', opt=true }}
  })

  -- coding utilities
  use({
    'norcalli/nvim-colorizer.lua',
    config = function() require('colorizer').setup() end
  })
  use({
    'lukas-reineke/indent-blankline.nvim',
    config = function() require('indent_blankline').setup() end
  })
  use({
    'lewis6991/gitsigns.nvim',
    config = function() require('gitsigns').setup() end
  })
  use('windwp/nvim-autopairs')
  use({
    'numToStr/Comment.nvim',
    config = function() require('Comment').setup() end
  })
  use('JoosepAlviste/nvim-ts-context-commentstring')
  use({
    'nacro90/numb.nvim',
    config = function() require('numb').setup() end
  })

  -- treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  })

  -- lsp
  use('neovim/nvim-lspconfig')
  use('williamboman/nvim-lsp-installer')

  -- make faster startup
  use('lewis6991/impatient.nvim')

  -- faster escape using jk
  use({
    'max397574/better-escape.nvim',
    config = function() require('better_escape').setup() end
  })

  -- zen mode to have a distraction free env
  use('Pocco81/true-zen.nvim')

  -- latex support using vimtex
  use({
    'lervag/vimtex'
  })

  -- markdown preview plugin
  use({'ellisonleao/glow.nvim'})

  -- neorg plugin an org mode clone for neovim
  use({
    'nvim-neorg/neorg',
    config = function() require('neorg').setup() end,
    requires = 'nvim-lua/plenary.nvim',
  })

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
