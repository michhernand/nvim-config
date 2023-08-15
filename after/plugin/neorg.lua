vim.keymap.set("n", "<leader>nw", function()
    vim.cmd("Neorg workspace " .. vim.fn.input("Workspace > "))
end)

vim.keymap.set("n", "<leader>nr", "<cmd>Neorg return<CR>")

vim.keymap.set("n", "<leader>njt", "<cmd>Neorg journal today<CR>")
vim.keymap.set("n", "<leader>njy", "<cmd>Neorg journal yesterday<CR>")
vim.keymap.set("n", "<leader>njo", "<cmd>Neorg journal tomorrow<CR>")
