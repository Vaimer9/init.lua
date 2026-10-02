return {
    {
        'bluz71/vim-moonfly-colors'
    },
    {
        'maxmx03/solarized.nvim',
        lazy = false,
        priority = 1000,

        ---@type solarized.config
        opts = {},

        config = function(_, opts)
            vim.o.termguicolors = true
            -- vim.o.background = 'light'
            require('solarized').setup(opts)
        end,
    },
    {
        'Tsuzat/NeoSolarized.nvim',
    },
    {
        'aktersnurra/no-clown-fiesta.nvim'
    },
    {
        'marko-cerovac/material.nvim'
    },
    {
        'ramojus/mellifluous.nvim'
    },
    {
        'folke/tokyonight.nvim'
    },
    {
        'rebelot/kanagawa.nvim'
    },
    {
        'navarasu/onedark.nvim'
    },
    {
        'mofiqul/vscode.nvim'
    },
    {
        'blazkowolf/gruber-darker.nvim'
    },
    {
        'Aejkatappaja/cendre'
    },
    {
        'skylarmb/torchlight.nvim'
    },
    {
        'olimorris/onedarkpro.nvim'
    },
    {
        'nyoom-engineering/oxocarbon.nvim'
    },
    {
        'EdenEast/nightfox.nvim'
    },
    {
        'luisiacc/gruvbox-baby'
    },
    {
        'ellisonleao/gruvbox.nvim',
        opts = {
            -- overrides = {
            --     ["@lsp.mod.defaultLibrary.cpp"] = { fg = "#fb4934" },
            -- },
        },
    },
}
