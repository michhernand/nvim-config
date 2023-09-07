return
    {
       "nvim-lualine/lualine.nvim", dependencies = {
           "nvim-tree/nvim-web-devicons"
       },
       event = { "BufReadPost", "BufNewFile" },
       config = function()
           require("lualine").setup()
       end
    }
