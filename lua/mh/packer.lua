-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	  "catppuccin/nvim",
	  as = "catppuccin",
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })

  use(
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'}
  )

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

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

  use ('christoomey/vim-tmux-navigator')

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

  use({
      "kdheepak/lazygit.nvim",
      requires = {
          "nvim-lua/plenary.nvim"
      }
  })

  use {
    "renerocksai/telekasten.nvim",
    requires = {"nvim-telescope/telescope.nvim"}
  }

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

  use {
    "nvim-neorg/neorg",
    config = function()
        require('neorg').setup {
            load = {
                ["core.defaults"] = {}, -- Loads default behaviour
                ["core.concealer"] = {}, -- Adds pretty icons to your documents
                ["core.dirman"] = { -- Manages Neorg workspaces
                    config = {
                        workspaces = {
                            notes = "~/notes",
                            qb = "~/qb/00_brain",
                            sai = "~/qb/01_studies/sai/00_brain",
                        },
                    },
                },
            },
        }
    end,
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim",
}
end)
