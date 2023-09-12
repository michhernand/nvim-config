return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = true,
    event = { "BufReadPost", "BufNewFile" }, 
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = {
                "pyright",
                "gopls",
            },
            automatic_installation = true,
        })
    end
}
