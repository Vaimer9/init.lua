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

require("indent_blankline").setup {
    show_end_of_line = true,
	filetype_exclude = { "dashboard", "startify" }
}

require("Comment").setup()
require("nvim-autopairs").setup{}
require("lightspeed").setup{}

