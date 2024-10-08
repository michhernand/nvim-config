vim.keymap.set('n', 'n', 'j', { noremap = true, desc = "Move down" })
vim.keymap.set('n', 'e', 'k', { noremap = true, desc = "Move up" })
vim.keymap.set('n', 'i', 'l', { noremap = true, desc = "Move right" })

-- Visual mode
vim.keymap.set('v', 'n', 'j', { noremap = true, desc = "Move down" })
vim.keymap.set('v', 'e', 'k', { noremap = true, desc = "Move up" })
vim.keymap.set('v', 'i', 'l', { noremap = true, desc = "Move right" })

-- Operator-pending mode
vim.keymap.set('o', 'n', 'j', { noremap = true, desc = "Move down" })
vim.keymap.set('o', 'e', 'k', { noremap = true, desc = "Move up" })
vim.keymap.set('o', 'i', 'l', { noremap = true, desc = "Move right" })

-- Uppercase versions
vim.keymap.set('n', 'N', 'J', { noremap = true, desc = "Join lines" })
vim.keymap.set('n', 'E', 'K', { noremap = true, desc = "Lookup" })
vim.keymap.set('n', 'I', 'L', { noremap = true, desc = "To lower right of screen" })

-- Common combinations
vim.keymap.set('n', 'gn', 'gj', { noremap = true, desc = "Move down (display line)" })
vim.keymap.set('n', 'ge', 'gk', { noremap = true, desc = "Move up (display line)" })

-- Window navigation
map('n', '<C-n>', '<C-j>', { noremap = true, desc = "Move to lower window" })
map('n', '<C-e>', '<C-e>', { noremap = true, desc = "Move to upper window" })
map('n', '<C-i>', '<C-i>', { noremap = true, desc = "Move to right window" })

