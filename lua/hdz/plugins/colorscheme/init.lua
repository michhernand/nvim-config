if os.getenv("NEOVIM_ENV") == "server" then
    return {}
else
    -- return {
	   --  "folke/tokyonight.nvim",
	   --  lazy = false,
	   --  priority = 1000,
	   --  opts = {},
    -- }
    return {
        "ellisonleao/gruvbox.nvim", 
        priority = 1000, 
        config = true, 
        -- opts = ...
    }
end
