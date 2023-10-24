return {
    "folke/trouble.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        { "<leader>tt", "<cmd>TroubleToggle<CR>" },
        { "<leader>tr", "<cmd>TroubleRefresh<CR>" },
    }
}
