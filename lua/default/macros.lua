vim.api.nvim_create_user_command("HLine", function()
	local line = "// "
	line = line .. string.rep("-", 120 - string.len(line))

	local cmd = "i" .. line .. "<ESC>j"
	vim.api.nvim_input(cmd)
end, {})

vim.api.nvim_create_user_command("Section", function(opts)
	local line = "// "
	line = line .. string.rep("-", 120 - string.len(line)) .. "\n"

	local label = "// "
	label = label .. opts.fargs[1] .. "\n"

	local cmd = "i" .. line .. label .. line .. "<ESC>j"
	vim.api.nvim_input(cmd)
end, { nargs = 1 })
