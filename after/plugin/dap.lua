local dap = require("dap")

dap.adapters.codelldb = {
	type = "server",
	port = 13000,
	executable = {
		command = "codelldb",
		args = { "--port", "13000" },
	},
}

local codelldb = {
	name = "Launch lldb",
	type = "codelldb",
	request = "launch",
	program = function()
		return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
	end,
	cwd = "${workspaceFolder}",
	stopOnEntry = false,
	args = { "verify-number", "-v", "35" },
	runInTerminal = false,
}

dap.configurations.rust = {
	codelldb,
}

-- vim.keymap -- no map by default
vim.keymap.set("n", "<leader>dr", dap.continue)
vim.keymap.set("n", "<leader>di", dap.step_into)
vim.keymap.set("n", "<leader>ds", dap.step_over)
vim.keymap.set("n", "<leader>do", dap.step_out)

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)

-- DAP Plugins
require("nvim-dap-virtual-text").setup()
local dapui = require("dapui")
dapui.setup()

vim.keymap.set("n", "<leader>du", dapui.toggle)
