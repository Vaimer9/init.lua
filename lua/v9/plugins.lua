vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'karb94/neoscroll.nvim'
    use 'folke/tokyonight.nvim'
    use 'xiyaowong/nvim-transparent'
    use 'ggandor/lightspeed.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'NTBBloodbath/doom-one.nvim'
    use 'elixir-editors/vim-elixir'
    use 'p00f/clangd_extensions.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'romgrk/barbar.nvim'
    use 'mhinz/vim-startify'

    -- Lsp Setup Starts here!!
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

end)
