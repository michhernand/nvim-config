return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    lazy = true,
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
          { "<leader>ff", "<cmd>Telescope find_files<cr>"},
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
        -- { 
        --     "<leaderfs", 
        --     function()
        --         "Telescope grep_string("
        --     end
        -- }
        -- { "<leader>fs", function()
        -- builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        { "<C-p>", "<cmd>Telescope git_files<cr>" },
      }
}
