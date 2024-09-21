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

        -- Existing configurations
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["gopls"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig["r_language_server"].setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        lspconfig.rust_analyzer.setup({
            on_attach=on_attach,
            settings = {
                ["rust-analyzer"] = {
                    imports = {
                        granularity = {
                            group = "module",
                        },
                        prefix = "self",
                    },
                    cargo = {
                        buildScripts = {
                            enable = true,
                        },
                    },
                    procMacro = {
                        enable = true
                    },
                }
            }
        })

        lspconfig.metals.setup({
            capabilities = capabilities,
            on_attach = on_attach
        })

        -- Add Java configuration
        lspconfig.jdtls.setup({
            capabilities = capabilities,
            on_attach = on_attach,
            cmd = {'/opt/homebrew/bin/jdtls'},
            root_dir = function(fname)
                return require('lspconfig.util').root_pattern('pom.xml', 'gradle.build', '.git')(fname) or vim.fn.getcwd()
            end,
            settings = {
                java = {
                    signatureHelp = { enabled = true },
                    contentProvider = { preferred = 'fernflower' },
                    completion = {
                        favoriteStaticMembers = {
                            "org.hamcrest.MatcherAssert.assertThat",
                            "org.hamcrest.Matchers.*",
                            "org.junit.Assert.*",
                            "java.util.Objects.requireNonNull",
                            "java.util.Objects.requireNonNullElse",
                            "org.mockito.Mockito.*"
                        },
                    },
                    sources = {
                        organizeImports = {
                            starThreshold = 9999,
                            staticStarThreshold = 9999,
                        },
                    },
                    codeGeneration = {
                        toString = {
                            template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                        },
                        useBlocks = true,
                    },
                }
            },
        })
    end
}
