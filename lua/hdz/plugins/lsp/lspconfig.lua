return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh/7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local opts = { noremap = true, silent = true }
        local on_attach = function(client, buffer)
            opts.buffer = buffer

            vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "gf", "<cmd>Telescope lsp_definitions<CR>", opts)
            vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
            vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)
            vim.keymap.set({"n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        end

        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["gopls"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })
    end
}
