local map = vim.api.nvim_set_keymap

local bind = function(bindlist)
    local defaults = { noremap = true, silent = true }
    for _, binding in ipairs(bindlist) do
        map("n", string.format("%s", binding[1]), string.format("%s", binding[2]), defaults)
    end
end

bind({
    { "<leader>,", "<Cmd>BufferPrevious<CR>" },
    { "<leader>.", "<Cmd>BufferNext<CR>" },
    { "<leader>p", ":Telescope<CR>" },
    { "<leader>ss", ":w<CR>" },
    { "<leader>ff", ":Telescope find_files<CR>" },
    { "<leader>tt", ":TransparentToggle<CR>" },
    { "<C-a>", ":NvimTreeToggle<CR>" },
    { "K", "<cmd>lua vim.lsp.buf.hover()<cr>" },
    { "gl", "<cmd>lua vim.diagnostic.open_float()<cr>" }
})
