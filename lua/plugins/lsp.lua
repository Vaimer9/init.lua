return {
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
        },

        config = function()
            local capabilities =
            require("cmp_nvim_lsp").default_capabilities()

            local mason_lspconfig = require("mason-lspconfig")

            -- This runs for EVERY installed LSP
            mason_lspconfig.setup({
                handlers = {
                    function(server_name)
                        vim.lsp.config(server_name, {
                        capabilities = capabilities,
                        })
                        vim.lsp.enable(server_name)
                    end,
                    ["verible"] = function()
                      vim.lsp.config("verible", {
                        capabilities = capabilities,
                        root_dir = function(fname)
                          return require("lspconfig.util").root_pattern(
                            "verible.filelist",
                            ".git"
                          )(fname) or vim.fn.getcwd()
                        end,
                      })

                      vim.lsp.enable("verible")
                    end,

                }
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local client = vim.lsp.get_client_by_id(args.data.client_id)
                    if client and client.server_capabilities.inlayHintProvider then
                        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
                    end
                end,
            })

            vim.keymap.set("n", "<leader>ih", function()
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
            end, { desc = "Toggle inlay hints" })
        end,
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },

        config = function()
            local cmp = require("cmp")

            cmp.setup({

                window = {
                    completion = {
                        -- border = "rounded",
                        max_height = 8,
                        max_width = 40,
                        -- winhighlight = "Normal:CmpPmenu,FloatBorder:CmpBorder,CursorLine:CmpSel,Search:None",
                    },
                    documentation = {
                        -- border = "rounded",
                        max_height = 8,
                        max_width = 50,
                    },
                },

                snippet = {
                    expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                    end,
                },

                format = require("lspkind").cmp_format({
                    mode = "symbol_text",
                    maxwidth = 50,
                    ellipsis_char = "…",
                    menu = {
                        nvim_lsp = "[LSP]",
                        luasnip = "[Snip]",
                        buffer = "[Buf]",
                        path = "[Path]",
                    },
                }),

                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                }),

                sources = cmp.config.sources(
                    {
                        { name = "nvim_lsp" },
                        { name = "luasnip" },
                    }, 
                    {
                        { name = "buffer" },
                        { name = "path" },
                    }
                ),
            })
        end,
    },
    {
        'onsails/lspkind.nvim'
    }

}
