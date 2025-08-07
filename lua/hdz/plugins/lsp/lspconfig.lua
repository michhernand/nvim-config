return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local on_attach = require("hdz.lsp.on_attach")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local gopls = require("hdz.lsp.servers.gopls")
		gopls.setup(lspconfig, on_attach.on_attach, capabilities)

		local luals = require("hdz.lsp.servers.luals")
		luals.setup(lspconfig, on_attach.on_attach, capabilities)

		local ruff = require("hdz.lsp.servers.ruff")
		ruff.setup(lspconfig, on_attach.on_attach, capabilities)

		local clangd = require("hdz.lsp.servers.clangd")
		clangd.setup(lspconfig, on_attach.on_attach, capabilities)

		local r = require("hdz.lsp.servers.r")
		r.setup(lspconfig, on_attach.on_attach, capabilities)

		local gdscript = require("hdz.lsp.servers.godot")
		gdscript.setup(lspconfig, on_attach.on_attach, capabilities)

		local gdshader = require("hdz.lsp.servers.gdshader")
		gdshader.setup(lspconfig, on_attach.on_attach, capabilities)
	end
}

