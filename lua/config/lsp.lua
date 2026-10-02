vim.lsp.config("clangd", {
    cmd = { 'clangd' },
    filetypes = { 'c', 'cpp' },
    root_markers = { 'CMakeLists.txt', "Makefile", "compile_commands.json" },
})

vim.filetype.add({ extension = { spade = 'spade' }})
