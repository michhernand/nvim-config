local function set_lsp_nav_keys(opts)
	-- Go to definition of this...
	vim.keymap.set("n", "gD", function() vim.lsp.buf.definition() end, opts)

	-- Go to where this is used...
	vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

	-- Go to implementations of this interface...
	vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

	vim.keymap.set("n", "gf", "<cmd>Telescope lsp_definitions<CR>", opts)

	vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
end

local function set_lsp_diagnostic_keys(opts)
	-- Use LSP to format file...
	vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)

	-- Show more error/warning detail...
	vim.keymap.set("n", "<leader>lk", function() vim.diagnostic.open_float() end, opts)
end

local M = {}

function M.on_attach(client, buffer)
	local opts = { noremap = true, silent = true }
	opts.buffer = buffer

	set_lsp_nav_keys(opts)
	set_lsp_diagnostic_keys(opts)
end

return M

