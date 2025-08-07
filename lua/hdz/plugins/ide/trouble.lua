local qf_list_filepath = vim.fn.stdpath("data") .. "/qflist.json"

return {
	"folke/trouble.nvim",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		auto_open = false,
		auto_jump = false,
		auto_preview = false,
		auto_refresh = true,
		max_items = 1000,
		win = {
			size = 0.4
		}
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},

		{
			"<leader>tT",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},

		{
			"<leader>ts",
			function()
				local qf_items = vim.fn.getqflist()
				for _, item in ipairs(qf_items) do
					if item.bufnr and item.bufnr > 0 then
						item.filename = vim.fn.bufname(item.bufnr)
						item.bufnr = 0
					end
				end
				vim.fn.writefile(
					{ vim.json.encode(qf_items) },
					qf_list_filepath
				)
			end,
			desc = "Save QF List",
		},

		{
			"<leader>tl",
			function()
				if vim.fn.filereadable(qf_list_filepath) == 1 then
					local data = vim.fn.readfile(qf_list_filepath)
					local restored = vim.json.decode(table.concat(data))
					vim.fn.setqflist(restored)
				end
			end,
			desc = "Load QF List",
		},

		{
			"<leader>tq",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
}
