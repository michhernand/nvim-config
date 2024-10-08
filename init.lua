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


imports = {
    {import = "hdz.plugins"},
    {import = "hdz.plugins.lsp"},
    {import = "hdz.plugins.colorscheme"},
    {import = "hdz.plugins.git"},
    {import = "hdz.plugins.ide"},
    {import = "hdz.plugins.ui"},
    {import = "hdz.plugins.dap"},
    {import = "hdz.keymaps.qwerty"}
}

if os.getenv("NEOVIM_COLEMAK") == "1" then
    table.insert({ import = "hdz.keymaps.colemak" })
else
    table.insert({ import = "hdz.keymaps.qwerty" })
end

require("lazy").setup(imports)

if os.getenv("NEOVIM_ENV") ~= "server" then
    vim.cmd.colorscheme("tokyonight-night")
end

-- require("remap")

--require("set")
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.cursorline = true

vim.lsp.set_log_level("debug")
require('vim.lsp.log').set_format_func(vim.inspect)

local config = {
    cmd = {'/opt/homebrew/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

