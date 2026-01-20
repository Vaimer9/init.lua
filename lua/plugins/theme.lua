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
        'Tsuzat/NeoSolarized.nvim'
    },
    {
        'aktersnurra/no-clown-fiesta.nvim'
    },
    {
        'marko-cerovac/material.nvim'
    },
    {
        'ramojus/mellifluous.nvim'
    }
}
