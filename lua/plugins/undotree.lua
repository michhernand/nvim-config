return
    {
        "mbbill/undotree",
        lazy = true,
        keys = {"<leader>uu", "<cmd>UndotreeToggle<CR>"},
        config = function()
            vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
        end
    }
