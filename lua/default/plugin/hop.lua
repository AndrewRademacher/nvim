return {
	{
		"smoka7/hop.nvim",
		version = "*", -- optional but strongly recommended
		config = function()
			local hop = require("hop")

			hop.setup({
				keys = "etovxqpdygfblzhckisuran",
				quit_key = "<Space>",
				jump_on_sole_occurence = false,
				case_insensitive = true,
			})

			vim.keymap.set("n", ";", hop.hint_char1, {})
		end,
	},
}
