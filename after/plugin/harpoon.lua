vim.keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")

vim.keymap.set("n", "<leader>hk", "<cmd>lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
vim.keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")

vim.keymap.set("n", "<M-m>", "<cmd>lua require('harpoon.mark').add_file()<CR>")
vim.keymap.set("n", "<M-n>", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
vim.keymap.set("n", "<M-p>", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")

