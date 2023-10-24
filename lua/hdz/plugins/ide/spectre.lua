return {
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
        keys = {
            {'<leader>S', '<cmd>lua require("spectre").toggle()<CR>'},
            {'<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>'},
            {'<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>'},
        },
        config = function()
            vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>')
        end
    },
}
