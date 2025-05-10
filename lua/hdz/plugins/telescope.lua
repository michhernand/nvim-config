return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    event = { "BufReadPost", "BufNewFile" },
    lazy = true,
    dependencies = {
        'nvim-lua/plenary.nvim',
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>"},
        { "<leader>fr", "<cmd>Telescope oldfiles<cr>"},
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
        -- { 
        --     "<leaderfs", 
        --     function()
        --         "Telescope grep_string("
        --     end
        -- }
        -- { "<leader>fs", function()
        -- builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        { "<C-p>", "<cmd>Telescope git_files<cr>" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defauls = {
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist,
                    }
                }
            }
        })

        telescope.load_extension("fzf");
    end
}
