local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').racket_langserver.setup {
    cmd = { "racket", "--lib", "racket-langserver", "--", "--stdio" },
    filetypes = { "racket" },
}

lsp.setup()
