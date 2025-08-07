return {
	dir="~/dev/rolodex.nvim",
	-- "michhernand/RLDX.nvim",
	branch = "develop",
	lazy = false,
	-- event = "VeryLazy",
	opts = {
		filename = os.getenv("HOME") .. "/.rldx/db.bson",
		-- encryption = "elementwise_xor",
		encryption = "plaintext",
	}, -- see configuration docs for details
	keys = {
		{ "<leader>Xa", "<cmd>RldxAdd<CR>", desc="add" },
		{ "<leader>Xl", "<cmd>RldxLoad<CR>", desc="load" },
		{ "<leader>Xd", "<cmd>RldxDelete<CR>", desc="deelete" },
		{ "<leader>Xs", "<cmd>RldxSave<CR>", desc="save"},
		{ "<leader>Xp", "<cmd>RldxProps<CR>", desc="properties" },
	}
}
