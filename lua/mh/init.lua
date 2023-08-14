require("mh.remap")
require("mh.set")

-- comment package
require("Comment").setup()

-- nvim-tree package
require("nvim-tree").setup()

-- telekasten
require("telekasten").setup({
    home = vim.fn.expand("~/zettlekasten"),
    vaults = {
        -- personal = {
        --     home = vim.fn.expand("~/brain")
        -- }
    }
})

-- refactoring
require("refactoring").setup()
