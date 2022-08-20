-- setup colorscheme with fallback if the plugin doesn't work
vim.cmd [[
  try
    colorscheme tokyonight
    let g:tokyonight_style = "storm"
    let g:tokyonight_italic_comments = 1
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]
