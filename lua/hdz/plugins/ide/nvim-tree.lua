return 
{
    'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = true,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require("nvim-tree").setup {}
    end,
    keys = {
        { "<C-n>", "<cmd>NvimTreeToggle<CR>" },
    }
}

