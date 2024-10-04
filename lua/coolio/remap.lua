vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.cmd("autocmd FileType cpp nnoremap <buffer> <F5> :w <CR> :!g++ -std=c++17 -O2 -Wall % && ./a.out<CR>")
