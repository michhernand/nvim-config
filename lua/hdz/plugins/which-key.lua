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
			{"<leader>tt", desc="toggle"},
			{"<leader>tT", desc="buffer diagnostics"},
			{"<leader>ts", desc="symbols"},
			{"<leader>tl", desc="lsp definitions"},
			{"<leader>tL", desc="location list"},
			{"<leader>tQ", desc="quickfix list"},

			{"<leader>h", group="harpoon"},
			{"<leader>hm", desc="menu"},
			{"<leader>hk", desc="add file"},
			{"<leader>hn", desc="nav next"},
			{"<leader>hp", desc="nav prev"},

			{"<leader>f", group="telescope"},
			{"<leader>ff", desc="find files"},
			{"<leader>fg", desc="live grep"},
			{"<leader>fb", desc="find buffers"},
			{"<leader>fh", desc="find help tags"},
			{"<leader>fs", desc="in-file grep"},

			{"<leader>G", desc="lazygit"},

			{"<leader>d", desc="delete (keep register)"},
			{"<leader>y", desc="yank (system clipboard)"},
			{"<leader>Y", desc="yank line (system clipboard)"},

			{"<leader>r", group="refactoring"},
			{"<leader>re", desc="extract"},
			{"<leader>rf", desc="extract to file"},
			{"<leader>rv", desc="extract variable"},
			{"<leader>ri", desc="inline variable"},
			{"<leader>rb", desc="extract block"},
			{"<leader>rg", desc="extract block to file"},

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
			{"<leader>Xa", desc="add"},
			{"<leader>Xd", desc="delete"},
			{"<leader>Xp", desc="properties"},
			{"<leader>Xl", desc="load"},
			{"<leader>Xs", desc="save"},

			{"<leader>D", group="dap"},
			{"<leader>Dm", desc="test method"},
			{"<leader>Dc", desc="test class"},
			{"<leader>Ds", desc="test selection"},

			{"<leader>B", desc="breakpoint"},
		})
	end,
}
