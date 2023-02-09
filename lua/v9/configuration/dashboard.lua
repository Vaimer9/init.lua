
vim.cmd [[

let g:startify_skiplist = [
    \ '~/temp',
    \ ]

let g:startify_custom_header =
    \ startify#center(split(system('figlet -w 100 -k Neovim'), '\n'))

let g:startify_lists = [
    \ { 'type': 'files',     'header': ['   Recent files']        },
    \ ]

highlight StartifyHeader ctermfg=118
autocmd User Startified setlocal cursorline
]]
