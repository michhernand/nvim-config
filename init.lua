local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = ","

require("lazy").setup({
    {import = "hdz.plugins"},
    {import = "hdz.plugins.lsp"},
    {import = "hdz.plugins.colorscheme"},
    {import = "hdz.plugins.git"},
    {import = "hdz.plugins.ide"},
    {import = "hdz.plugins.ui"},
    {import = "hdz.plugins.dap"},
})

if os.getenv("NEOVIM_ENV") ~= "server" then
    vim.cmd.colorscheme("tokyonight-night")
    -- vim.cmd.colorscheme("gruvbox")
    -- vim.o.background = "light"
end

-- require("remap")
vim.keymap.set("n", "<leader>Rk", ":res -5<CR>")
vim.keymap.set("n", "<leader>Rj", ":res +5<CR>")
vim.keymap.set("n", "<leader>Rh", ":vertical res -5<CR>")
vim.keymap.set("n", "<leader>Rl", ":vertical res +5<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })

vim.keymap.set("n", "<leader>wv", "<cmd> vsplit<CR>")
vim.keymap.set("n", "<leader>wh", "<cmd> split<CR>")

vim.keymap.set("n", "<leader>bn", "<cmd> bnext<CR>")
vim.keymap.set("n", "<leader>bp", "<cmd> bprev<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd> bdelete<CR>")

vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)
-- views can only be fully collapsed with the global statusline

vim.opt.laststatus = 3
vim.opt.smartindent = false

--require("set")
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = false

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.cursorline = true

vim.lsp.set_log_level("debug")
require('vim.lsp.log').set_format_func(vim.inspect)

