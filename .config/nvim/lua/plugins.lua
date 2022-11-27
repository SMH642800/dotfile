local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})
	use("nvim-lualine/lualine.nvim") -- Status --
	use("neovim/nvim-lspconfig") -- LSP --
	use("onsails/lspkind-nvim") -- vscode-like pictograms --
	use("akinsho/nvim-bufferline.lua") -- Tabs-Bufferline --
	use("jose-elias-alvarez/typescript.nvim") -- typescript LSP

	-- autocompletion
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words --
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP --
	use("hrsh7th/nvim-cmp") -- Completion --
	use("hrsh7th/cmp-path") -- nvim-cmp source for file path --

	-- snippets
	use("L3MON4D3/LuaSnip") -- Snippet engines
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- use treesitter to highlight syntax
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	use("norcalli/nvim-colorizer.lua") -- colorizer --
	use("glepnir/lspsaga.nvim") -- LSP UIs --

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons
	use("nvim-tree/nvim-web-devicons")

	use("nvim-lua/plenary.nvim") -- Common utilities

	-- telescope file search and browser
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
	use("nvim-telescope/telescope-file-browser.nvim")
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	use("jose-elias-alvarez/null-ls.nvim") -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
	use("jayp0521/mason-null-ls.nvim")

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
end)
