local extras_ok, extras = pcall(require, "extras.trouble")

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
	config = function()
		local opts = {
			auto_open = false,
			auto_jump = false,
			auto_preview = false,
			auto_refresh = true,
			max_items = 1000,
			win = {
				size = 0.4
			}
		}

		if extras_ok and extras and type(extras) == "table" and extras.before then
			extras.before(opts)
		end

		local Trouble = require "trouble"
		Trouble.setup(opts)

		vim.keymap.set(
			"n", "<leader>tt",
			"<cmd>Trouble diagnostics toggle<cr>",
			{ desc = "Trouble Diagnostics" }
		)

		vim.keymap.set(
			"n", "<leader>tT",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			{ desc = "Trouble Buffer Diagnostics" }
		)

		vim.keymap.set(
			"n", "<leader>ts",
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
			{ desc = "Save QF List" }
		)

		vim.keymap.set(
			"n", "<leader>tl",
			function()
				if vim.fn.filereadable(qf_list_filepath) == 1 then
					local data = vim.fn.readfile(qf_list_filepath)
					local restored = vim.json.decode(table.concat(data))
					vim.fn.setqflist(restored)
				end
			end,
			{ desc = "Load QF List" }
		)

		vim.keymap.set(
			"n", "<leader>tq",
			"<cmd>Trouble qflist toggle<cr>",
			{ desc = "View QF List" }
		)

		if extras_ok and extras and type(extras) == "table" and extras.after then
			extras.after(opts, Trouble)
		end

	end,
}
