return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' -- package manager
  use 'neovim/nvim-lspconfig' -- native LSP

end)
