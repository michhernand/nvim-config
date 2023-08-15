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
        qb = {
            home = vim.fn.expand("~/qb/00_brain")
        },
        sai = {
            home = vim.fn.expand("~/qb/01_studies/sai/00_brain")
        }
    }
})

-- refactoring
require("refactoring").setup()
