require('neoscroll').setup()

require("clangd_extensions").setup {
    server = {},
    extensions = {
        inlay_hints = {
            only_current_line = false,
            only_current_line_autocmd = "CursorHold",
            show_parameter_hints = true,
            parameter_hints_prefix = "<- ",
            other_hints_prefix = "=> ",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
            priority = 100,
        },
    }
}

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
}

-- For barbar being a bitch
vim.api.nvim_create_autocmd('BufWinEnter', {
    pattern = '*',
    callback = function()
        if vim.bo.filetype == 'NvimTree' then
          require'bufferline.api'.set_offset(31, 'File tree')
        end
    end
})

vim.api.nvim_create_autocmd('BufWinLeave', {
    pattern = '*',
    callback = function()
        if vim.fn.expand('<afile>'):match('NvimTree') then
          require'bufferline.api'.set_offset(0)
        end
    end
})

vim.cmd [[ noremap <silent> <C-n> :lua require'tree'.toggle()<CR> ]]

-- require("indent_blankline").setup {
--     show_end_of_line = true,
--     show_current_context_start = true,
--     filetype_exclude = { "dashboard", "startify" }
-- }

require("ibl").setup {
    scope = { enabled = false },
}

require "ibl".overwrite {
     exclude = { filetypes = { "dashboard", "startify" } }
}

require("Comment").setup()
require("nvim-autopairs").setup{}
require("lightspeed").setup{}



require("presence").setup({
    auto_update         = true,
    neovim_image_text   = "I use arch btw",
    main_image          = "file",
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = false,
    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
    line_number_text    = "Line %s out of %s",
})

require("focus").setup()
