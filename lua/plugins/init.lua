return {
    -- Colorscheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "nvim-lua/plenary.nvim" },
    { "MunifTanjim/nui.nvim" },
    { "rcarriga/nvim-notify" },
    --{ "folke/neodev.nvim", opts = {} },
    --{ "folke/todo-comments.nvim" },

    -- Tpope Stuff + Extensions
    --{ "tpope/vim-dadbod" },
    --{ "kristijanhusak/vim-dadbod-ui" },
    --{ "kristijanhusak/vim-dadbod-completion" },

    -- Primagen Stuff
    --{
     --   "nvim-neotest/neotest-python",
    --    opts = { runner = "pytest" }
    --},
    --{
     --   "nvim-neotest/neotest",
     --   opts = {
     --       adapters = {
     --           "nvim-neotest/neotest-python",
     --           "nvim-neotest/neotest-go",
     --       }
     --   },
     --   dependencies = {
     --       "nvim-lua/plenary.nvim",
    --        "nvim-treesitter/nvim-treesitter",
    --        "antoinemadec/FixCursorHold.nvim",
    --        "nvim-neotest/neotest-python",
    --        "nvim-neotest/neotest-plenary",
    --        "nvim-neotest/neotest-vim-test",
    --        "nvim-neotest/neotest-go",
    --    }
    --},
    {
        'numToStr/Comment.nvim', 
        opts = {},
        lazy = false,
    },
    --{ "windwp/nvim-autopairs" },
    --{
    --    'nvim-tree/nvim-tree.lua',
    --    dependencies = {
    --        'nvim-tree/nvim-web-devicons'
    --    }
    --},

    --{
    --    "L3MON4D3/LuaSnip",
    --    version = "v2.*",
    --    build = "make install_jsregexp"
    --},
    --{
     --   "kdheepak/lazygit.nvim",
     --   dependencies = {
     --       "nvim-lua/plenary.nvim"
     --   }
    --},

    --{
    --    "nvim-telescope/telescope.nvim",
    --    version = "0.1.2",
    --    dependencies = {
    --        "nvim-lua/plenary.nvim"
    --    }
    --},
    --{
     --   "renerocksai/telekasten.nvim",
     --   dependencies = {
     --       "nvim-telescope/telescope.nvim"
    --    }
    --},
    --{
     --   'VonHeikemen/lsp-zero.nvim',
    --    branch = 'v2.x',
    --    lazy = true,
    --    dependencies = {
            -- LSP Support
    --        'neovim/nvim-lspconfig',             -- Required
    --        'williamboman/mason.nvim',           -- Optional
    --        'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
    --        'hrsh7th/nvim-cmp',     -- Required
    --        'hrsh7th/cmp-nvim-lsp', -- Required
    --        'L3MON4D3/LuaSnip',     -- Required
    --    }
    --},

    { "christoomey/vim-tmux-navigator" },
    --{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    --{ "rcarriga/nvim-notify" },
    --{ "stefanlogue/hydrate.nvim" },
    --{ "averms/black-nvim" },
    --{ "mbbill/undotree" },
    --{ "fatih/vim-go" },
    --{ "f-person/git-blame.nvim" },
    --{
    --    "nvim-lualine/lualine.nvim", dependencies = {
    --        "nvim-tree/nvim-web-devicons"
    --    }, lazy = true
    --},
}
