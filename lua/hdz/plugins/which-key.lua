return {
	"folke/which-key.nvim",
	-- event = "VeryLazy",
	lazy = false,
	opts = {},
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local status_ok, wk = pcall(require, "which-key")
		if not status_ok then
			print("which-key config failed!")
			return
		end
		-- local wk = require("which-key")
		wk.add({
			{"<leader>R", group="resize pane"},
			{"<leader>Rh", desc="left 5"},
			{"<leader>Rj", desc="down 5"},
			{"<leader>Rk", desc="up 5"},
			{"<leader>Rl", desc="right 5"},

			{"<leader>t", group="trouble"},


			{"<leader>f", group="snacks"},

			{"<leader>G", desc="git"},

			{"<leader>d", desc="delete (keep register)"},
			{"<leader>y", desc="yank (system clipboard)"},
			{"<leader>Y", desc="yank line (system clipboard)"},

			{"<leader>w", group="split"},
			{"<leader>wv", desc="vertical"},
			{"<leader>wh", desc="horizontal"},

			{"<leader>b", group="buffers"},
			{"<leader>bn", desc="next"},
			{"<leader>bp", desc="prev"},
			{"<leader>bd", desc="delete"},

			{"<leader>o", group="org"},
			{"<leader>oa", desc="agenda"},
			{"<leader>oc", desc="capture"},

			{"<leader>n", group="roam"},

			{"<leader>X", group="RLDX"},

			{"<leader>D", group="dap"},
			{"<leader>Dm", desc="test method"},
			{"<leader>Dc", desc="test class"},
			{"<leader>Ds", desc="test selection"},

			{"<leader>B", desc="breakpoint"},
		})
	end,
}
