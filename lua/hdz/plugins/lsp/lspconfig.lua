return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, buffer)
			opts.buffer = buffer

			vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
			vim.keymap.set("n", "gf", "<cmd>Telescope lsp_definitions<CR>", opts)
			vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
			vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
			vim.keymap.set({"n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "gD", 
			function()
				vim.lsp.buf.definition()
			end,
			opts
			)
			vim.keymap.set("n", "gB", "<C-o>", { noremap = true, silent = true, desc = "Go back from definition" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					runtime = {
						version = 'LuaJIT',
					},
					diagnostics = {
						globals = {'vim'},
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false, -- Disable third-party checking prompt
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})

		-- Python
		lspconfig["pyright"].setup({
			capabilities = capabilities,
			on_attach = on_attach
		})

		-- Python
		lspconfig["ruff"].setup({
			init_options = {
				settings = {
					organizeImports = true,
					fixAll = true,
					lineLength = 88,
					lint = {
						enabled = true,
						diagnosticMode = "openFilesOnly", -- or "workspace"
						run = "onType", -- or "onSave"
					}
					-- Ruff language server settings go here
				}
			}
		})

		-- Go
		lspconfig["gopls"].setup({
			capabilities = capabilities,
			on_attach = on_attach
		})

		-- C++
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

		-- R
		lspconfig["r_language_server"].setup({
			capabilities = capabilities,
			on_attach = on_attach
		})

		-- Zig
		lspconfig.zls.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			cmd = { "/Users/michael/bin/zls" }, -- Replace with the path to your compiled zls binary
			filetypes = { "zig" },
			root_dir = lspconfig.util.root_pattern(".git", "build.zig", "zls.json"),
			single_file_support = true
		})
	end
}

