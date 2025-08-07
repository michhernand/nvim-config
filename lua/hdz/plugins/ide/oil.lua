return {
	'stevearc/oil.nvim',
	---@module 'oil'
	---@type oil.SetupOpts

	lazy = false,

	dependencies = {
		{
			"echasnovski/mini.icons", opts = {}
		}
	},

	opts = {
		use_default_keymaps = false,
		keymaps = {
			["g?"] = { "actions.show_help", mode = "n" },
			["<CR>"] = "actions.select",
			["<M-s>"] = { "actions.select", opts = { vertical = true } },
			["<M-h>"] = { "actions.select", opts = { horizontal = true } },
			["<M-t>"] = { "actions.select", opts = { tab = true } },
			["<M-p>"] = "actions.preview",
			["<M-c>"] = { "actions.close", mode = "n" },
			["<M-l>"] = "actions.refresh",
			["-"] = { "actions.parent", mode = "n" },
			["_"] = { "actions.open_cwd", mode = "n" },
			["`"] = { "actions.cd", mode = "n" },
			["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
			["gs"] = { "actions.change_sort", mode = "n" },
			["gx"] = "actions.open_external",
			["g."] = { "actions.toggle_hidden", mode = "n" },
			["g\\"] = { "actions.toggle_trash", mode = "n" },
		},
	},

	keys = {
		{ "<leader>M", "<cmd>Oil<CR>", desc = "Open Oil"},
		{
			"<leader>N",
			function()
				local git_root = vim.fn.system("git rev-parse --show-toplevel"):gsub("\n", "")
				if vim.v.shell_error == 0 then
					vim.cmd("Oil " .. git_root)
				else
					print("Not in a git repository")
				end
			end,
			desc = "Open git root in Oil"
		}
	}
}
