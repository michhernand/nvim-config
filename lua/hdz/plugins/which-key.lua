return {
    "folke/which-key.nvim",
    -- event = "VeryLazy",
    lazy = false,
    opts = {},
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    config = function()
        local status_ok, wk = pcall(require, "which-key")
        if not status_ok then
            print("which-key config failed!")
            return
        end
        wk.register({
            ["<leader>t"] = {
                name = "trouble",
                t = "toggle",
                r = "refresh",
            },
            ["<leader>g"] = {
                name = "go",
                c = "term close",
                t = "test",
            },
            ["<leader>h"] = {
                name = "harpoon",
                m = "menu",
                k = "add file",
                n = "nav next",
                p = "nav prev",
            },
            ["<leader>f"] = {
                name = "telescope",
                f = { "find files" },
                g = { "live grep" },
                b = { "find buffers" },
                h = { "find help tags" },
                s = { "in-file grep" },
            },
            ["<leader>S"] = "toggle spectre",
            ["<leader>s"] = {
                name = "spectre",
                w = "open visual",
                p = "open file search",
            },

            ["<leader>G"] = "lazygit",
            ["<leader>u"] = {
                "undo tree",
                u = { "launch" },
            },
            ["<leader>t"] = {
                "trouble",
                t = { "toggle" },
                r = { "refresh" },
            },
            ["<leader>d"] = {
                "delete (keep register)"
            },
            ["<leader>y"] = {
                "yank (clipboard)"
            },
            ["<leader>Y"] = {
                "yank line (clipboard)"
            },
            ["<leader>r"] = {
                name = "refactoring",
                e = { "extract" },
                f = { "extract to file" },
                v = { "extract variable" },
                i = { "inline variable" },
                b = { "extract block" },
                g = { "extract blcok to file" },
            },
            ["<leader>w"] = {
                name = "split",
                v = "vertical",
                h = "horizontal",
            },
            ["<leader>B"] = { "black" },
            ["<leader>b"] = {
                name = "buffers",
                n = "next",
                p = "prev",
                d = "delete",
            },
        })
    end,
}
