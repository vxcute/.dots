vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use(
	  'nvim-treesitter/nvim-treesitter',
	  { run = ':TSUpdate' }
  )

  use { "ellisonleao/gruvbox.nvim" }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
   -- {'hrsh7th/nvim-cmp'},
   -- {'hrsh7th/cmp-nvim-lsp'},
   -- {'L3MON4D3/LuaSnip'},
  }
}

use {                                                                                                                                                                                        
  "folke/todo-comments.nvim",                                                                                                                                                                
  requires = "nvim-lua/plenary.nvim",                                                                                                                                                   
  config = function()
    require("todo-comments").setup{}
  end
}


use "norcalli/nvim-colorizer.lua"

use {"xero/miasma.nvim"}
end)
