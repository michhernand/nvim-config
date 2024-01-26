if os.getenv("DISABLE_COPILOT") == "true" then
    return {}
else 
    return {
      "zbirenbaum/copilot-cmp",
      dependencies = "copilot.lua",
      opts = {},
      config = function(_, opts)
        local copilot_cmp = require("copilot_cmp")
        copilot_cmp.setup(opts)
      end
    }
end
