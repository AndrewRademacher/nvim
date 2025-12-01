return {
	"mhartington/formatter.nvim",
	config = function()
		local util = require("formatter.util")

		require("formatter").setup({
			logging = true,
			log_level = vim.log.levels.WARN,

			filetype = {
				lua = { require("formatter.filetypes.lua").stylua },
				rust = {
					function()
						return {
							exe = "rustfmt",
							args = { "--edition 2024" },
							stdin = true,
						}
					end,
				},
				-- rust = { require("formatter.filetypes.rust").rustfmt, args = { "--edition 2024" } },
				rustscript = { require("formatter.filetypes.rust").rustfmt },
				python = { require("formatter.filetypes.python").black },
				zig = { require("formatter.filetypes.zig").zigfmt },
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
	end,
}
