vim.keymap.set("n", "<leader>zz", "<cmd>lua require('neotest').run.run()<CR>")
vim.keymap.set("n", "<leader>zx", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
vim.keymap.set("n", "<leader>za", "<cmd>lua require('neotest').run.attach()<CR>")
