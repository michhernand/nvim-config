SELECTED = "hyperb1iss/silkcircuit-nvim"

local function get_colorscheme(selected)
	local colorschemes = {}

	colorschemes["hyperb1iss/silkcircuit-nvim"] = {
		"hyperb1iss/silkcircuit-nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("silkcircuit")
		end
	}

	colorschemes["folke/tokyonight.nvim"] = {
	    "folke/tokyonight.nvim",
	    lazy = false,
	    priority = 1000,
	    config = function()
		    vim.cmd.colorscheme("tokyonight-night")
	    end
	}

	return colorschemes[selected]
end

if os.getenv("NEOVIM_ENV") == "server" then
    return {}
else
    return get_colorscheme(SELECTED)
end
