return {
    -- Colorscheme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    { "nvim-lua/plenary.nvim", lazy = true },
    { "MunifTanjim/nui.nvim", lazy = true },
    { "rcarriga/nvim-notify", lazy = true },
    { "neovim/nvim-lspconfig", lazy = true },
    { "williamboman/mason.nvim", lazy = true},
    { "williamboman/mason-lspconfig.nvim", lazy = true },
    {'hrsh7th/nvim-cmp', lazy = true},
    {'hrsh7th/cmp-nvim-lsp', lazy = true},
    {
        "folke/neodev.nvim",
        opts = {},
        event = { "BufReadPost", "BufNewFile" }
    },
    { "folke/todo-comments.nvim", dependencies = {"nvim-lua/plenary.nvim"}, opts = {}},



    -- Tpope Stuff + Extensions
    { "tpope/vim-dadbod", lazy=false},
    { "kristijanhusak/vim-dadbod-ui", lazy=false, dependencies = { "kristijanhusak/vim-dadbod-completion" } },
    { "kristijanhusak/vim-dadbod-completion" },


    {
        'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    { "windwp/nvim-autopairs", lazy = false },

    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        version = "v2.*",
        build = "make install_jsregexp"
    },


    { "christoomey/vim-tmux-navigator", lazy = false },
    { "stefanlogue/hydrate.nvim", lazy = false },
    { "averms/black-nvim", lazy = true, keys = {"<leader>B", "<cmd>call Black()<CR>"}},
    { "fatih/vim-go",
    lazy = true ,
    keys = {
        {"<leader>ob", "<cmd> GoBuild<CR>"},
        {"<leader>ol", "<cmd> GoInstall<CR>"},
        {"<leader>ot", "<cmd> GoTest<CR>"},
        { "<leader>oy", "<cmd> GoTestFunc<CR>"},
        {"<leader>ou", "<cmd> GoDebugStart<CR>"},
        {"<leader>od", "<cmd> GoDef<CR>"},
        {"n", "<leader>oi", function()
            vim.cmd("GoImport " .. vim.fn.input("Import > "))
        end},
        {"<leader>op", function()
            vim.cmd("GoDrop " .. vim.fn.input("Drop > "))
        end},
        {"<leader>or", "<cmd> GoRename<CR>"},
        {"<leader>oc", "<cmd> GoCoverage<CR>"}
    }
},
{ "f-person/git-blame.nvim", event = { "BufReadPost", "BufNewFile" }},
}
