return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
  end,
  lazy=true,
  event = { "BufReadPost", "BufNewFile" }, 
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  keys = {
      { "<leader>gt", "<cmd>GoTest -v<CR>" },
      { "<leader>gc", "<cmd>GoTermClose<CR>" },
  }
}
