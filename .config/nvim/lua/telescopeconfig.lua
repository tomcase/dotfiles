-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
local ts = require('telescope')
ts.setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
ts.load_extension('fzf')

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>fb', "<cmd>Telescope buffers<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>fh', "<cmd>Telescope help_tags<cr>", opts)

vim.api.nvim_set_keymap('n', '<leader>gd', "<cmd>Telescope lsp_definitions<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>gi', "<cmd>Telescope lsp_implementations<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>gr', "<cmd>Telescope lsp_references<cr>", opts)
vim.api.nvim_set_keymap('n', '<leader>#', "<cmd>Telescope lsp_range_code_actions<cr>", opts)
