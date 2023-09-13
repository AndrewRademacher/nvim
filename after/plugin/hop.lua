local hop = require("hop")

hop.setup({
	quit_key = "<Space>",
	jump_on_sole_occurence = false,
	case_insensitive = true,
})

vim.keymap.set("n", ";", hop.hint_char1, {})
