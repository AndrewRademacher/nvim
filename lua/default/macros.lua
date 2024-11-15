vim.api.nvim_create_user_command("Test", "echo 'It Works'", {})

vim.api.nvim_create_user_command("HLine", function(opts)
	local line = "// "
	line = line .. string.rep("-", 120 - string.len(line))

	local cmd = "i" .. line .. "<ESC>j"
	vim.api.nvim_input(cmd)
end, {})
