return
    {
        "renerocksai/telekasten.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim"
        },
        lazy = true,
        keys = {
            -- Launch panel if nothing is typed after <leader>z
            {"<leader>z", "<cmd>Telekasten panel<CR>"},

            -- Most used functions
            {"<leader>zf", "<cmd>Telekasten find_notes<CR>"},
            {"n", "<leader>zg", "<cmd>Telekasten search_notes<CR>"},
            {"<leader>zd", "<cmd>Telekasten goto_today<CR>"},
            {"<leader>zz", "<cmd>Telekasten follow_link<CR>"},
            {"<leader>zn", "<cmd>Telekasten new_note<CR>"},
            {"<leader>zc", "<cmd>Telekasten show_calendar<CR>"},
            {"<leader>zb", "<cmd>Telekasten show_backlinks<CR>"},
            {"<leader>zI", "<cmd>Telekasten insert_img_link<CR>"},
            {"<leader>zv", "<cmd>Telekasten switch_vault<CR>"},
        },
        config = function()
            require("telekasten").setup({
                home = vim.fn.expand("~/zettlekasten"),
                vaults = require("./plugins.local.telekasten"),
            })
            vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
        end
    }
