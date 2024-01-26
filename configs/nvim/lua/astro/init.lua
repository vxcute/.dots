require("astro.remap")

-- config variables 
vim.opt.guicursor = ""
vim.opt.termguicolors = true

vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set number")

-- keybindings
vim.cmd("nnoremap <leader>dd :Lexplore %:p:h<CR>")
vim.cmd("nnoremap <Leader>da :Lexplore<CR>")
