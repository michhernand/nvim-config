local extras_ok, extras = pcall(require, "extras.snacks")

return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		local opts = {
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
		}

		if extras_ok and extras and type(extras) == "table" and extras.before then
			vim.notify("Executing Snacks 'before' hook")
			extras.before(opts)
		else
			vim.notify("Snacks 'before' hook not found")
		end

		local Snacks = require "snacks"
		Snacks.setup(opts)

		vim.keymap.set(
			"n", "<leader>ff",
			function() Snacks.picker.smart() end,
			{ desc = "Smart Picker" }
		)

		vim.keymap.set(
			"n", "<leader>fb",
			function() Snacks.picker.buffers() end,
			{ desc = "Buffer Picker" }
		)

		vim.keymap.set(
			"n", "<leader>fg",
			function() Snacks.picker.grep() end,
			{ desc = "Grep" }
		)

		vim.keymap.set(
			"n", "<leader>e",
			function() Snacks.explorer() end,
			{ desc = "File Explorer" }
		)

		vim.keymap.set(
			"n", "<leader>G",
			function() Snacks.lazygit() end,
			{ desc = "Git" }
		)

		if extras_ok and extras and type(extras) == "table" and extras.after then
			vim.notify("Executing Snacks 'after' hook")
			extras.after(opts, Snacks)
		else
			vim.notify("Snacks 'after' hook not found")
		end
	end
}
