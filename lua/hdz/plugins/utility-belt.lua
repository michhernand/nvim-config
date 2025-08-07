return {
	dir="~/dev/utility-belt.nvim/",
	opts = {},
	keys = {
		{ "<leader>uf", "<cmd>CopyRelPath<CR>", desc = "Copy File Relative Path" },
		{ "<leader>uF", "<cmd>CopyAbsPath<CR>", desc = "Copy File Absolute Path" },
		{ "<leader>ud", "<cmd>CopyFileName<CR>", desc = "Copy File Name" },
		{ "<leader>ug", "<cmd>CopyGitURL<CR>", desc = "Copy Git URL" },
		{ "<leader>uG", "<cmd>CopyGitLineURL<CR>", desc = "Copy Git URL w/ Line #" },
		{ "<leader>uo", "<cmd>OpenGitURL<CR>", desc = "Open Git URL" },
		{ "<leader>uO", "<cmd>OpenGitLineURL<CR>", desc = "Open Git URL w/ Line #" },
		{ "<leader>ub", "<cmd>CopyGitBranchName<CR>", desc = "Copy Git Branch Name" },
		{ "<leader>un", "<cmd>CopyGitBranchURL<CR>", desc = "Copy Git Branch URL" },
		{ "<leader>uN", "<cmd>OpenGitBranchURL<CR>", desc = "Open Git Branch URL" },
		{ "C-j", "<cmd>FormatJQ<CR>", desc = "Format Selection with jq", mode = "v"},
	}
}
