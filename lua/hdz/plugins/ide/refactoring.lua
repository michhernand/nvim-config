return {
    "ThePrimeagen/refactoring.nvim",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        {"<leader>rb", ":Refactor extract_block"},
        {"<leader>rg", ":Refactor extract_block_to_file"},
    },
    config = function()
        vim.keymap.set("x", "<leader>re", ":Refactor extract ")
        vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file ")
        vim.keymap.set("x", "<leader>rv", ":Refactor extract_var ")
        vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var")
    end
}
