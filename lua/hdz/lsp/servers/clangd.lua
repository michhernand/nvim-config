local M = {}
function M.setup(lspconfig, on_attach, capabilities)
	lspconfig.clangd.setup({
		capabilities = capabilities,
		on_attach = on_attach,
		cmd = { "clangd", "--background-index" },
		filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
		root_dir = function(fname)
			return require('lspconfig.util').root_pattern(
				'compile_commands.json',
				'compile_flags.txt',
				'configure.ac',
				'.git'
			)(fname) or vim.fn.getcwd()
		end,
		single_file_support = true,
		settings = {
			clangd = {
				arguments = {
					"--header-insertion=iwyu",
					"--suggest-missing-includes",
					"--completion-style=detailed"
				}
			}
		}
	})

end

return M

