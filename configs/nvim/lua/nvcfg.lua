vim.opt.expandtab = true -- tabs to spaces
vim.opt.shiftwidth = 2 -- 4 spaces for < and > TODO: change back to 4
vim.opt.softtabstop = 2 -- 4 spaces in a tab TODO: change back to 4
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show other line numbers as relative
vim.opt.smartindent = true -- Smart indent
vim.g.airline_powerline_fonts = 1 -- nice icons for airline
vim.g.wrap = false -- don't wrap lines
vim.g.termguicolors = true -- better colors
vim.g.gruvbox_italic = 1 -- gruvbox can use italic font
vim.g.material_style = 'oceanic' -- material theme
vim.g.bf_array_mode = 2 -- cyclic brainfuck memory
vim.g.bf_value_mode = 2 -- cyclic brainfuck values

-- load colorscheme
local file = io.open(vim.fn.stdpath('config') .. "/colorscheme", "r")
local cs = file:read("l")
file:close()
vim.cmd("colorscheme " .. cs)

-- ufo
vim.o.foldcolumn = '1'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
require('ufo').setup()

-- autoclose
require('autoclose').setup({})

return false
