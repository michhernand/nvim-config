return 
{
    'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = true,
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require("nvim-tree").setup {
            filters = {
                dotfiles = false,
            },
        }
    end,
    keys = {
        { "<leader>N", "<cmd>NvimTreeToggle<CR>" },
    }
}

