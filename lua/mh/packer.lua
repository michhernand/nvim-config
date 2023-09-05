-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use ({
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })



  use 'averms/black-nvim'
  use 'mbbill/undotree'
  use 'folke/neodev.nvim'
  use 'fatih/vim-go'
  use 'f-person/git-blame.nvim'
  use 'tpope/vim-fugitive'
  use 'christoomey/vim-tmux-navigator'
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use 'rcarriga/nvim-notify'
  use 'mvllow/stand.nvim'
  use 'stefanlogue/hydrate.nvim'

  use {
      "ThePrimeagen/refactoring.nvim",
      requires = {
          {"nvim-lua/plenary.nvim"},
          {"nvim-treesitter/nvim-treesitter"},
      }
  }

  use {
      "ThePrimeagen/harpoon",
      requires = {"nvim-lua/plenary.nvim"}
  }

  use({
	"L3MON4D3/LuaSnip",
	tag = "v2.*",
	run = "make install_jsregexp",
  })

  use({
      "kdheepak/lazygit.nvim",
      requires = {
          "nvim-lua/plenary.nvim"
      }
  })

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2', requires = {
          {
              'nvim-lua/plenary.nvim'
          }
      }
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }

  use {
      'folke/which-key.nvim',
      config = function()
          vim.o.timeout = true
          vim.o.timeoutlen = 300
          require("which-key").setup {}
      end
  }

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons'
      }
  }

  use {
  "nvim-neotest/neotest",
  requires = {
    "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim", "nvim-neotest/neotest-python",
    "nvim-neotest/neotest-plenary", "nvim-neotest/neotest-vim-test",
    "nvim-neotest/neotest-go",
  }
}
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {}
    end
}

  use {
    'renerocksai/telekasten.nvim',
    requires = {'nvim-telescope/telescope.nvim'}
  }

end)
