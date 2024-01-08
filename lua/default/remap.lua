vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

-- Hop
local hop = require("hop")
vim.keymap.set("n", ";", hop.hint_char1, {})

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fp", builtin.git_files, {})
vim.keymap.set("n", "<leader>fs", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
