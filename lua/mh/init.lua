require("mh.remap")
require("mh.set")

-- comment package
require("Comment").setup()

-- nvim-tree package
require("nvim-tree").setup()

-- refactoring
require("refactoring").setup()

require("neotest").setup({
  adapters = {
    require("neotest-python")({
        runner = "pytest"
    }),
    require("neotest-go")
  },
})

require("hydrate").setup()

