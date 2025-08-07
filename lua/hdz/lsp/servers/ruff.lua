local M = {}

function M.setup(lspconfig, on_attach, capabilities)
	lspconfig["ruff"].setup({
		init_options = {
			settings = {
				organizeImports = true,
				fixAll = true,
				lineLength = 88,
				lint = {
					enabled = true,
					diagnosticMode = "workspace", -- or "workspace"
					run = "onType", -- or "onSave"
				}
			}
		},
		capabilities = capabilities,
		on_attach = on_attach
	})
end

return M

