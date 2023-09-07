return {
    "ThePrimeagen/harpoon",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>" },
        { "<leader>hk", "<cmd>lua require('harpoon.mark').add_file()<CR>" },
        { "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<CR>" },
        { "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>" },
        { "<M-m>", "<cmd>lua require('harpoon.mark').add_file()<CR>" },
        { "<M-n>", "<cmd>lua require('harpoon.ui').nav_next()<CR>" },
        { "<M-p>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>" },
    }
}
