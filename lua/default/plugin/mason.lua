return {
	{
		"williamboman/mason.nvim",
		config = function()
			local mason = require("mason")
			local registry = require("mason-registry")

			mason.setup({
				ui = {
					check_outdated_packages_on_open = true,
				},
			})

			if not registry.is_installed("stylua") then
				registry.get_package("stylua"):install()
			end

			if not registry.is_installed("codelldb") then
				registry.get_package("codelldb"):install()
			end
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = {
			ensure_installed = {
				"pylyzer",
				"julials",
				"lua_ls",
				"rust_analyzer",
				"texlab",
				"zls",
			},
		},
	},
}
