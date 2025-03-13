return {
	dir="~/dev/rolodex.nvim",
	-- "michhernand/RLDX.nvim",
	branch = "develop",
	lazy = false,
	-- event = "VeryLazy",
	opts = {
		filename = os.getenv("HOME") .. "/.rldx/db.bson",
		-- encryption = "elementwise_xor",
		encryption = "elementwise_xor",
	}, -- see configuration docs for details
	keys = {
		{ "<leader>Xa", "<cmd>RldxAdd<CR>" },
		{ "<leader>Xl", "<cmd>RldxLoad<CR>" },
		{ "<leader>Xd", "<cmd>RldxDelete<CR>" },
		{ "<leader>Xs", "<cmd>RldxSave<CR>" },
		{ "<leader>Xp", "<cmd>RldxProps<CR>" },
	}
}
