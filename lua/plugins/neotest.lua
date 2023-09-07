return
{
    "nvim-neotest/neotest",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        adapters = {
            ["nvim-neotest/neotest-python"] = {
                runner = "pytest",
            },
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
}
