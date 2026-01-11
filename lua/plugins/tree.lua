return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for icons
  },
  -- Lazy-load on keypress
  keys = {
    { "<C-a>", "<cmd>NvimTreeToggle<CR>", desc = "Toggle file explorer" },
    { "<leader>o", "<cmd>NvimTreeFocus<CR>",  desc = "Focus file explorer" },
  },

  config = function()
    require("nvim-tree").setup({
      -- Close tree when opening a file
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },

      view = {
        width = 30,
        side = "left",
      },

      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },

      filters = {
        dotfiles = false,
      },

      git = {
        enable = true,
      },
    })
  end,
}

