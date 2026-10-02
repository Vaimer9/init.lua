vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("config.opts")
require("config.keymaps")
require("config.lsp")

-- vim.api.nvim_set_hl(0, "@lsp.mod.defaultLibrary.cpp", {
--     fg = "#fb4934",
-- })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.cpp", {
    fg = "#fb4934",
})
