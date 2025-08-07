return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = true },
    picker = { enabled = true},
  },

  keys = {
	  { "<leader>ff", function() Snacks.picker.smart() end, desc = "Smart Picker"},
	  { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffer Picker"},
	  { "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep"},
	  { "<leader>e", function() Snacks.explorer() end, desc = "File Explorer"},
	  { "<leader>G", function () Snacks.lazygit() end, desc = "Git"}
  }
}
