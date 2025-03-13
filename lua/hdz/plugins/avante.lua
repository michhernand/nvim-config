if os.getenv("DISABLE_AVANTE") == "true" then
	return {}
end

return {
	"yetone/avante.nvim",
	event = { "BufReadPost", "BufNewFile" },
	lazy = true,
	version = false, -- set this if you want to always pull the latest change
	opts = {
		provider = "claude",
		claude = {
			-- endpoint = "https://api.anthropic.com/v1/messages",
			model = "claude-3-7-sonnet-20250219",
			max_tokens = 8192,
			thinking = {
				type = "disabled",
				-- budget_tokens = 2048,
			},
			temperature = 1,
		}
	},
	-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	build = "make",
	-- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		"zbirenbaum/copilot.lua", -- for providers='copilot'
		{
			-- support for image pasting
			"HakonHarnes/img-clip.nvim",
			event = "VeryLazy",
			opts = {
				-- recommended settings
				default = {
					embed_image_as_base64 = false,
					prompt_for_file_name = false,
					drag_and_drop = {
						insert_mode = true,
					},
					-- required for Windows users
					use_absolute_path = true,
				},
			},
		},
		{
			-- Make sure to set this up properly if you have lazy=true
			'MeanderingProgrammer/render-markdown.nvim',
			opts = {
				file_types = { "markdown", "Avante" },
			},
			ft = { "markdown", "Avante" },
		},
	},
}
