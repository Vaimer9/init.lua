vim.opt.tabstop = 4      -- number of visual spaces per TAB
vim.opt.shiftwidth = 4  -- spaces used for autoindent
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function()
    vim.opt.relativenumber = false
  end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function()
    vim.opt.relativenumber = true
  end,
})

vim.cmd.colorscheme("solarized")
