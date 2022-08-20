# SLNVIM

<p align="center">
  <a>
    <img src=https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white>
  </a>
  <a>
    <img src=https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white>
  </a>
</p>

This is my neovim configuration, It is completelly wirtten in lua and
follows a directory scheme that I think fits very well my needs.

```
nvim
|
|__ init.lua
|__ plugin
|   |__ ftplugin
|
|__ lua
    |__ config
        |__ lsp
        |__ ...
```

## Plugins

**Utilities**
- [plenary](https://github.com/wbthomason/packer.nvim)
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [better-escape](https://github.com/max397574/better-escape.nvim)

**Color schemes**
- [tokyonight](https://github.com/folke/tokyonight.nvim)
- [nightfox](https://github.com/EdenEast/nightfox)
- [gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [nightfly](https://github.com/bluz71/vim-nightfly-guicolors)
- [moonfly](https://github.com/bluz71/vim-moonfly-colors)

**Startup**
- [alpha](https://github.com/goolord/alha-nvim)
- [impatient](https://github.com/lewis6991/impatient.nvim)

**Completion system**
- [cmp](https://github.com/hrsh7th/nvim-cmp)
  - [buffer integration](https://github.com/hrsh7th/cmp-buffer)
  - [path integration](https://github.com/hrsh7th/cmp-path)
  - [lsp integration](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [luasnip integation](https://github.com/saadparwaiz1/cmp_luasnip)

**Snippet engine**
- [luasnip](https;//github.com/L3M0N4D3/LuaSnip)

**Fuzzy finder**
- [telescope](https://github.com/nvim-telescope/nvim-telescope)

**Bar and status line**
- [lualine](https://github.com/nvim-lualine/lauline.nvim)
- [barline](https://github.com/romgrk/barbar.nvim)

**Coding utilities**
- [colorizer](https://github.com/norcalli/nvim-colorizer.lua)
- [indentline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [git signs](https://github.com/lewis6991/gitsigns.nvim)
- [comment](https://github.com/numToStr/Comment.nvim)
- [numb](https://github.com/nacro90/numb.nvim)
- [autopairs](https://github.com/windwp/nvim-autopairs)
- [comment string context](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [lsp](https://github.com/neovim/nvim-lspconfig)
  - [lsp installer](https://github.com/williamboman/nvim-lsp-installer)

**Documents**
- [zen mode](https://github.com/Pocco81/true-zen.nvim)
- [vimtex](https://github.com/lervag/vimtex)
- [glow](https://github.com/ellisonleao/glow.nvim)
- [neorg](https://github.com/nvim-neorg/neorg)

