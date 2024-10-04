require("coolio.remap")
require("coolio.set")
require("coolio.packer")

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.cpp",
  group = vim.api.nvim_create_augroup("create_skeletons", { clear = true }),
  command = "0r /home/ihgazi/.config/nvim/templates/template.cpp"
})

vim.g.copilot_filetypes = {
  ["cpp"] = false
}

vim.notify = require("notify")

