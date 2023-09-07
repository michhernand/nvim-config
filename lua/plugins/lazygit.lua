return
    {
       "kdheepak/lazygit.nvim",
       lazy = true,
       dependencies = {
           "nvim-lua/plenary.nvim"
       },
       keys = {
           { "<leader>gg", "<cmd>LazyGit<CR>" }
       }
    }
