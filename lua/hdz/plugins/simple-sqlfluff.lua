return {
	dir="~/dev/simple-sqlfluff.nvim",
	event = "VeryLazy",
	opts = {},
	keys = {
		{ "<leader>Sf", "<cmd>SQLFluffFormat<CR>", desc = "Format w/ SQLFluff" },
		{ "<leader>St", "<cmd>SQLFluffToggle<CR>", desc = "Toggle SQLFluff Linting" },
		{ "<leader>Se", "<cmd>SQLFluffEnable<CR>", desc = "Enable SQLFluff Linting" },
		{ "<leader>Sd", "<cmd>SQLFluffDisable<CR>", desc = "Disable SQLFluff Linting" },

	}
}
