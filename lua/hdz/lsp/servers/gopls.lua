local M = {}

function M.setup(lspconfig, on_attach, capabilities)
	lspconfig.gopls.setup({
		capabilities = capabilities,
		on_attach = on_attach
	})
end

return M

