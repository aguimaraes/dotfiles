-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- set clipboard
vim.opt.clipboard = "unnamedplus"

-- cursor line will be highlighted
vim.opt.cursorline = true
-- important for toggleterm to work properly
vim.opt.hidden = true

-- display line numbers relative to cursor
-- this makes it easy to use commands with amount of lines defined
vim.opt.number = true
vim.opt.relativenumber = true


vim.opt.title = true

-- set shift size to 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
