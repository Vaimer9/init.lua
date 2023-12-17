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
opt.scrolloff = 8
vim.opt.list = true

vim.g.plastic_nvim_transparent_bg = true

vim.g.doom_one_cursor_coloring        = true
vim.g.doom_one_terminal_colors        = true
vim.g.doom_one_italic_comments        = false
vim.g.doom_one_enable_treesitter      = true
vim.g.doom_one_diagnostics_text_color = false

require('kanagawa').setup({
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    }
})

require('onedark').setup {
    style = 'darker'
}

require("solarized-osaka").setup({
    transparent = false,
})

vim.cmd [[
let g:ada_extended_tagging = v:null
set shortmess+=c
set hidden
syntax on
filetype plugin on

inoremap \lambda λ

" Set the colorscheme
colorscheme moonfly
colorscheme gruber-darker

]]

