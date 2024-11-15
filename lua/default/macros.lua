vim.api.nvim_create_user_command("HLine", function()
	local line = "// "
	line = line .. string.rep("-", 120 - string.len(line))

	local cmd = "i" .. line .. "<ESC>j"
	vim.api.nvim_input(cmd)
end, {})
