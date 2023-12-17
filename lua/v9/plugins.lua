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
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'romgrk/barbar.nvim'
    use 'mhinz/vim-startify'
    use 'morhetz/gruvbox'
    use 'rebelot/kanagawa.nvim'
    use 'luisiacc/gruvbox-baby'
    use 'andweeb/presence.nvim'
    use 'neovimhaskell/haskell-vim'
    use 'bluz71/vim-nightfly-colors'
    use 'navarasu/onedark.nvim'
    use {'kaarmu/typst.vim', ft = {'typst'}}
    use 'craftzdog/solarized-osaka.nvim'
    use 'kepano/flexoki'
    use 'bluz71/vim-moonfly-colors'
    use 'savq/melange-nvim'
    use 'rmehri01/onenord.nvim'
    use 'Shatur/neovim-ayu'
    use {
        'uloco/bluloco.nvim',
        requires = { 'rktjmp/lush.nvim' }
    }
    use 'dasupradyumna/midnight.nvim'
    use 'JoosepAlviste/palenightfall.nvim'
    use 'kartikp10/noctis.nvim'
    use 'hachy/eva01.vim'
    use 'rileytwo/kiss'
    use 'blazkowolf/gruber-darker.nvim'
    use 'https://gitlab.com/HiPhish/neovim.rkt'
    use 'nvim-focus/focus.nvim'

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
