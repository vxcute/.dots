vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.cmd("nnoremap <leader>dd :Lexplore %:p:h<CR>")
vim.cmd("nnoremap <Leader>da :Lexplore<CR>")

map('n', '<C-d>', [[:lua require'dapui'.toggle()<CR>]], {})
map('n', '<F5>', [[:lua require'dap'.continue()<CR>]], {})
map('n', '<F2>', [[:lua require'dap'.toggle_breakpoint()<CR>]], {})
map('n', '<F10>', [[:lua require'dap'.step_over()<CR>]], {})
map('n', '<F11>', [[:lua require'dap'.step_into()<CR>]], {})
map('n', '<F12>', [[:lua require'dap'.step_out()<CR>]], {})
map('n', '<F6>', [[:lua require'dap'.repl.open()<CR>]], {})
map('n', 'dl', [[:lua require'dap'.run_last()<CR>]], {})
