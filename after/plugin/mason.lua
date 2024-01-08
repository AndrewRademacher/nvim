local mason = require("mason")
local registry = require("mason-registry")

mason.setup({
	ui = {
		check_outdated_packages_on_open = true,
	},
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"jedi_language_server",
		"julials",
		"lua_ls",
		"rust_analyzer",
		"texlab",
		"zls",
	},
})

if not registry.is_installed("stylua") then
	registry.get_package("stylua"):install()
end

if not registry.is_installed("codelldb") then
	registry.get_package("codelldb"):install()
end
