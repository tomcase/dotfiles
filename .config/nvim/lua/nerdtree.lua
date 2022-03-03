local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>:NERDTreeFocus<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>:NERDTree<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>:NERDTreeToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>:NERDTreeFind<CR>', opts)

vim.g.NERDTreeGitStatusUseNerdFonts = 1
vim.g.NERDTreeGitStatusShowIgnored = 1
