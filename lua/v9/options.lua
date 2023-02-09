local opt = vim.opt

vim.g.mapleader = " "

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.termguicolors = true
opt.mouse = "a"
opt.updatetime = 300
opt.laststatus=3

vim.g.plastic_nvim_transparent_bg = true

vim.g.doom_one_cursor_coloring        = true
vim.g.doom_one_terminal_colors        = true
vim.g.doom_one_italic_comments        = false
vim.g.doom_one_enable_treesitter      = true
vim.g.doom_one_diagnostics_text_color = false

vim.cmd [[

set shortmess+=c
set hidden
syntax on
filetype plugin on

" Set the colorscheme
colorscheme doom-one

]]

