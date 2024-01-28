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
      {'neovim/nvim-lspconfig'},
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

use 'mfussenegger/nvim-dap'

use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

end)
