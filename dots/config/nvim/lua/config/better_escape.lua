local status_ok, esc = pcall(require, "better_escape")
if not status_ok then
  return
end

esc.setup({
  mapping = ({"jk"}),
  timeout = 250,   -- number of ms to trigger the shortcut
  clear_empty_lines = false,
  keys = "<Esc>",
})
