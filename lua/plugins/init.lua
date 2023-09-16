return {
    -- Colorscheme
    {
	    "folke/tokyonight.nvim",
	    lazy = false,
	    priority = 1000,
	    opts = {},
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    },
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
        keys = {
            {'<leader>S', '<cmd>lua require("spectre").toggle()<CR>'},
            {'<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>'},
            {'<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>'},
        },
        config = function()
            vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>')
        end
    },
    { "airblade/vim-gitgutter", event = {"BufReadPost", "BufNewFile" }},
    { "nvim-lua/plenary.nvim", lazy = true },
    { "MunifTanjim/nui.nvim", lazy = true },
    { "rcarriga/nvim-notify", lazy = true },
    { "neovim/nvim-lspconfig", lazy = true },
    { "williamboman/mason.nvim", lazy = true},
    { "williamboman/mason-lspconfig.nvim", lazy = true },
    {'hrsh7th/nvim-cmp', lazy = true},
    {'hrsh7th/cmp-nvim-lsp', lazy = true},
    {
        'VonHeikemen/fine-cmdline.nvim', 
        lazy = false, 
        dependencies = {'MunifTanjim/nui.nvim'},
        keys = {
            {':', '<cmd>FineCmdline<CR>'}
        }
    },
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
        lazy = true,
        event = { "BufReadPost", "BufNewFile" }
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
{ "f-person/git-blame.nvim", event = { "BufReadPost", "BufNewFile" }},
}
