return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
	{ "<leader>p", "<cmd>Telescope<CR>", desc = "Toggle Telescope" },
    }

}
