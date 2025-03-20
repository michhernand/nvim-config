return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local dap = require "dap"
      local ui = require "dapui"

      require("dapui").setup()

      local python_debugger = vim.fn.exepath "debugpy"
      if python_debugger ~= "" then
	      dap.adapters.debugpy = {
		      type = "executable",
		      command = python_debugger,
		      args = {"-m", "debugpy.adapter"},
	      }

	      dap.configurations.python = {
		      {
			      type = "debugpy",
			      request = "launch",
			      name = "debugpy",
			      program = "${file}", -- Missing required field
			      pythonPath = function()
				      return vim.fn.exepath("python")
			      end,
			      projectDir = "${workspaceFolder}",
			      exitAfterTaskReturns = false,
			      debugAutoInterpretAllModules = false,
		      }
	      }
      end

      vim.keymap.set("n", "<space>B", dap.toggle_breakpoint)
      vim.keymap.set("n", "<space>gb", dap.run_to_cursor)

      -- Eval var under cursor
      vim.keymap.set("n", "<space>?", function()
        require("dapui").eval(nil, { enter = true })
      end)

      vim.keymap.set("n", "<F1>", dap.continue)
      vim.keymap.set("n", "<F2>", dap.step_into)
      vim.keymap.set("n", "<F3>", dap.step_over)
      vim.keymap.set("n", "<F4>", dap.step_out)
      vim.keymap.set("n", "<F5>", dap.step_back)
      vim.keymap.set("n", "<F13>", dap.restart)

      dap.listeners.before.attach.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        ui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        ui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        ui.close()
      end
    end,
  },
}
