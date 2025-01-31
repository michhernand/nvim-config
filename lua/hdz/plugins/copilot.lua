
if os.getenv("DISABLE_COPILOT") == "true" then 
	return {}
end

return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	build = ":Copilot auth",
	opts = {
		suggestion = { enabled = false },
		panel = { enabled = false },
		filetypes = {
			go = true,
			python = true,
			markdown = true,
			help = true,
		},
	},
}
