require("lazy").setup({
	{ "rose-pine/neovim", name = "rose-pine" },

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			"<leader>ff",
		},
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"mbbill/undotree",
	"tpope/vim-fugitive",

	-- LSP Zero
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },

	"mhartington/formatter.nvim",

	{
		"smoka7/hop.nvim",
		version = "*", -- optional but strongly recommended
		config = { keys = "etovxqpdygfblzhckisuran" },
	},

	-- LuaLine
	{
		"nvim-lualine/lualine.nvim",
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },

	"m4xshen/autoclose.nvim",

	"edluffy/hologram.nvim",

	"folke/trouble.nvim",

	"nvim-tree/nvim-web-devicons",

	-- Markdown Notebook
	"jakewvincent/mkdnflow.nvim",

	-- DAP TOOLS
	"mfussenegger/nvim-dap",
	"theHamsta/nvim-dap-virtual-text",
	"rcarriga/nvim-dap-ui",
})

-- -- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- -- Only required if you have packer configured as `opt`
-- vim.cmd([[packadd packer.nvim]])

-- return require("packer").startup(function(use)
-- 	-- Packer can manage itself
-- 	use("wbthomason/packer.nvim")

-- 	use({
-- 		"nvim-telescope/telescope.nvim",
-- 		tag = "0.1.2",
-- 		-- or                            , branch = '0.1.x',
-- 		requires = { { "nvim-lua/plenary.nvim" } },
-- 	})

-- 	use({
-- 		"rose-pine/neovim",
-- 		as = "rose-pine",
-- 		config = function()
-- 			vim.cmd("colorscheme rose-pine")
-- 		end,
-- 	})

-- 	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

-- 	use("mbbill/undotree")
-- 	use("tpope/vim-fugitive")

-- 	use({
-- 		"VonHeikemen/lsp-zero.nvim",
-- 		branch = "v2.x",
-- 		requires = {
-- 			-- LSP Support
-- 			{ "neovim/nvim-lspconfig" }, -- Required
-- 			{ "williamboman/mason.nvim" }, -- Optional
-- 			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

-- 			-- Autocompletion
-- 			{ "hrsh7th/nvim-cmp" }, -- Required
-- 			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
-- 			{ "L3MON4D3/LuaSnip" }, -- Required
-- 		},
-- 	})

-- 	use({ "mhartington/formatter.nvim" })

-- 	use({
-- 		"smoka7/hop.nvim",
-- 		tag = "*", -- optional but strongly recommended
-- 		config = function()
-- 			-- you can configure Hop the way you like here; see :h hop-config
-- 			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
-- 		end,
-- 	})

-- 	use({
-- 		"nvim-lualine/lualine.nvim",
-- 		requires = { "nvim-tree/nvim-web-devicons", opt = true },
-- 	})

-- 	use("m4xshen/autoclose.nvim")

-- 	use({ "edluffy/hologram.nvim" })

-- 	use({ "folke/trouble.nvim" })

-- 	use("nvim-tree/nvim-web-devicons")

-- 	-- Markdown notebook
-- 	use("jakewvincent/mkdnflow.nvim")

-- 	-- DAP TOOLS
-- 	use("mfussenegger/nvim-dap")
-- 	use("theHamsta/nvim-dap-virtual-text")
-- 	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
-- end)
