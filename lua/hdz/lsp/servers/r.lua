local M = {}

function M.setup(lspconfig, on_attach, capabilities)
	lspconfig["r_language_server"].setup({
		capabilities = capabilities,
		on_attach = on_attach
	})
end

return M
