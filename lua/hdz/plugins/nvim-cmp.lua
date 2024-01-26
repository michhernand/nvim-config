local my_dependencies = {
    "hrsh7th/cmp-buffer", -- source for text in buffer
    "hrsh7th/cmp-path", -- source for file system paths
    "L3MON4D3/LuaSnip", -- snippet engine
    "saadparwaiz1/cmp_luasnip", -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim", -- vs-code like pictograms
}

if os.getenv("DISABLE_COPILOT") ~= "true" then
    table.insert(my_dependencies, 1, "copilot.lua")
    table.insert(my_dependencies, 1, "zbirenbaum/copilot-cmp")
end

return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = my_dependencies,
    config = function()

        if os.getenv("DISABLE_COPILOT") ~= "true" then
            local copilot_cmp = require("copilot_cmp")
            copilot_cmp.setup(opts)
        end
        -- attach cmp source whenever copilot attaches
        -- fixes lazy-loading issues with the copilot cmp source
        -- require("lazyvim.util").lsp.on_attach(function(client)
        --   if client.name == "copilot" then
        --     copilot_cmp._on_insert_enter({})
        --   end
        -- end)

        local cmp = require("cmp")

        local luasnip = require("luasnip")

        local lspkind = require("lspkind")

        -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
        require("luasnip.loaders.from_vscode").lazy_load()

        local my_sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
        }

        if os.getenv("DISABLE_COPILOT") ~= "true" then
            table.insert(my_sources, 1, { name = "copilot" })
        end

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- configure how nvim-cmp interacts with snippet engine
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
            ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
            ["<C-e>"] = cmp.mapping.abort(), -- close completion window
            ["<CR>"] = cmp.mapping.confirm({ select = false }),
            -- ["C-h"] = function() vim.lsp.buf.signature_help() end
        }),
        -- sources for autocompletion
        sources = cmp.config.sources(my_sources),
        -- configure lspkind for vs-code like pictograms in completion menu
        formatting = {
            format = lspkind.cmp_format({
                maxwidth = 50,
                ellipsis_char = "...",
            }),
        },
    })


    -- local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    -- cmp.event:on(
    -- "confirm_done",
    -- cmp_autopairs.on_confirm_done()
    -- )
end
}
