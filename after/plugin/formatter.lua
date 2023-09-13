local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,

	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		rust = { require("formatter.filetypes.rust").rustfmt },
		python = { require("formatter.filetypes.python").black },
	},

	["*"] = {
		require("formatter.filetypes.any").remove_trailing_whitespace,
	},
})

vim.cmd([[
augroup FormatAutogroup
autocmd!
autocmd BufWritePost * FormatWrite
augroup END
]])
