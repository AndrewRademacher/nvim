return {
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		init = function()
			vim.g.lsp_zero_extend_cmp = 0
			vim.g.lsp_zero_extend_lspconfig = 0
		end,
		config = false,
		--		config = function()
		--			local lsp = require("lsp-zero").preset({})
		--
		--			lsp.on_attach(function(client, bufnr)
		--				-- see :help lsp-zero-keybindings
		--				-- to learn the available actions
		--				lsp.default_keymaps({ buffer = bufnr })
		--			end)
		--
		--			--lsp.ensure_installed({
		--			--	"jedi_language_server",
		--			--	"julials",
		--			--	"lua_ls",
		--			--	"rust_analyzer",
		--			--	"texlab",
		--			--	"zls",
		--			--})
		--
		--			-- (Optional) Configure lua language server for neovim
		--			require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
		--
		--			lsp.setup()
		--		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "williamboman/mason-lspconfig.nvim" },
		},
		config = function()
			-- This is where all the LSP shenanigans will live
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()

			--- if you want to know more about lsp-zero and mason.nvim
			--- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require("mason-lspconfig").setup({
				ensure_installed = {},
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						-- (Optional) Configure lua language server for neovim
						local lua_opts = lsp_zero.nvim_lua_ls()
						require("lspconfig").lua_ls.setup(lua_opts)
					end,
				},
			})
		end,
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_cmp()

			local cmp = require("cmp")
			-- local cmp_action = lsp_zero.cmp_action()

			local cmp_select = { behavior = cmp.SelectBehavior.Select }
			cmp.setup({
				formatting = lsp_zero.cmp_format(),
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
					["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
					["<C-y>"] = cmp.mapping.confirm({ select = true }),
					["<C-Space>"] = cmp.mapping.complete(),
				}),
			})

			--    local cmp_select = { behavior = cmp.SelectBehavior.Select }
			--	local cmp_mappings = lsp.defaults.cmp_mappings({
			--		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
			--		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
			--		["<C-y>"] = cmp.mapping.confirm({ select = true }),
			--		["<C-Space>"] = cmp.mapping.complete(),
			--	})
		end,
	},
	{ "L3MON4D3/LuaSnip" },
}
