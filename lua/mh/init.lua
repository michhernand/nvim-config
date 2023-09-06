local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup({
    -- Colorscheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    -- Folke Stuff
    ---- Updated UI Components
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {}
    },
    { "folke/neodev.nvim", opts = {} },
    { "folke/todo-comments.nvim" },

    -- Tpope Stuff + Extensions
    { "tpope/vim-fugitive" },
    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-ui" },
    { "kristijanhusak/vim-dadbod-completion" },

    -- Primagen Stuff
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-treesitter/nvim-treesitter",
        }
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "nvim-neotest/neotest-python",
        opts = { runner = "pytest" }
    },
    {
        "nvim-neotest/neotest",
        opts = {
            adapters = {
                "nvim-neotest/neotest-python",
                "nvim-neotest/neotest-go",
            }
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-neotest/neotest-python",
            "nvim-neotest/neotest-plenary",
            "nvim-neotest/neotest-vim-test",
            "nvim-neotest/neotest-go",
        }
    },
    { 'numToStr/Comment.nvim', },
    { "windwp/nvim-autopairs" },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        }
    },

    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        "kdheepak/lazygit.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },

    {
        "nvim-telescope/telescope.nvim",
        version = "0.1.2",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "renerocksai/telekasten.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim"
        }
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        lazy = true
        dependencies = {
            -- LSP Support
            'neovim/nvim-lspconfig',             -- Required
            'williamboman/mason.nvim',           -- Optional
            'williamboman/mason-lspconfig.nvim', -- Optional

            -- Autocompletion
            'hrsh7th/nvim-cmp',     -- Required
            'hrsh7th/cmp-nvim-lsp', -- Required
            'L3MON4D3/LuaSnip',     -- Required
        }
    },

    { "christoomey/vim-tmux-navigator" },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "rcarriga/nvim-notify" },
    { "stefanlogue/hydrate.nvim" },
    { "averms/black-nvim" },
    { "mbbill/undotree" },
    { "fatih/vim-go" },
    { "f-person/git-blame.nvim" },
    {
        "nvim-lualine/lualine.nvim", dependencies = {
            "nvim-tree/nvim-web-devicons"
        }, lazy = true
    },
})

vim.cmd.colorscheme "catppuccin"

require("mh.remap")
require("mh.set")

-- -- comment package
-- require("Comment").setup()
--
-- -- nvim-tree package
-- require("nvim-tree").setup()
--
-- -- refactoring
-- require("refactoring").setup()

-- require("neotest").setup({
--   adapters = {
--     require("neotest-python")({
--         runner = "pytest"
--     }),
--     require("neotest-go")
--   },
-- })

-- require("hydrate").setup()

-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true,
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = true, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })


-- require('lualine').setup()
