return {
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {
            exclude = {
                filetypes = {
                    "dashboard"
                }
            }
        },
    },
    {
        "karb94/neoscroll.nvim",
        opts = {},
        config = function()
            neoscroll = require('neoscroll')
            local keymap = {
                ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 250 }) end;
                ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 250 }) end;
                ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 450 }) end;
                ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 450 }) end;
                ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor=false; duration = 100 }) end;
                ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor=false; duration = 100 }) end;
                ["zt"]    = function() neoscroll.zt({ half_win_duration = 250 }) end;
                ["zz"]    = function() neoscroll.zz({ half_win_duration = 250 }) end;
                ["zb"]    = function() neoscroll.zb({ half_win_duration = 250 }) end;
            }
            local modes = { 'n', 'v', 'x' }
            for key, func in pairs(keymap) do
                vim.keymap.set(modes, key, func)
            end
        end
    },
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = false,
        build = ':TSUpdate',

        config = function()
            -- 1. Use the new API to get the parser config table
            local parser_config = require("nvim-treesitter").get_available()

            vim.api.nvim_create_autocmd('User', {
              pattern = 'TSUpdate',
              callback = function()
                require('nvim-treesitter.parsers').spade = {
                  install_info = {
                    url = "https://gitlab.com/spade-lang/tree-sitter-spade/",
                    files = { "src/parser.c" },
                    branch = "main",
                  },
                  filetype = "spade",
                }
              end,
            })
        end
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000 ,
        config = true,
        opts = ...
    },
    {
        "sphamba/smear-cursor.nvim",
        opts = {},
        enabled = false
    },
    {
        'kdheepak/lazygit.nvim',
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        keys = {
            { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
    }
}

