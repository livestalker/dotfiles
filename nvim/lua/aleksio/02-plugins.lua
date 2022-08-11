local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- Common
	use({ "wbthomason/packer.nvim" }) -- plugin manager
	use({ "nvim-lua/plenary.nvim" })  -- lua functions
	-- Themes
	use({ "ray-x/starry.nvim" })  -- A pack of modern nvim color schemes.
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })
	use({ "nvim-treesitter/nvim-treesitter-textobjects" })

	-- Git
	use({ "lewis6991/gitsigns.nvim" })

	-- Navigation
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "goolord/alpha-nvim" })            -- greeter
	use({ "kdheepak/tabline.nvim" })

	-- Line
	use({ "nvim-lualine/lualine.nvim" })

	-- LSP
	--use({ "williamboman/nvim-lsp-installer" }) -- Neovim plugin that allow you to seamlessly manage LSP servers with :LspInstall.
	--use({ "neovim/nvim-lspconfig" }) -- Quickstart configs for Nvim LSP
	--use({ "jose-elias-alvarez/null-ls.nvim" }) --Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
	--use({ "RRethy/vim-illuminate" })
	--use({ "glepnir/lspsaga.nvim", branch = "main" })
	--use({ "onsails/lspkind.nvim" })

	 --Completion
	--use({ "hrsh7th/nvim-cmp" }) -- A completion plugin for neovim coded in Lua.
	--use({ "hrsh7th/cmp-buffer" }) -- nvim-cmp source for buffer words.
	--use({ "hrsh7th/cmp-path" }) -- nvim-cmp source for path.
	--use({ "hrsh7th/cmp-nvim-lsp" }) -- nvim-cmp source for neovim builtin LSP client.
	--use({ "hrsh7th/cmp-nvim-lua" }) -- nvim-cmp source for nvim lua.
	--use({ "saadparwaiz1/cmp_luasnip" })
	--use({ "L3MON4D3/LuaSnip" })
	--use({ "rafamadriz/friendly-snippets" })
	--use({ "ray-x/lsp_signature.nvim" })

	-- Telescope
	--use({ "nvim-telescope/telescope.nvim" })
	--use({
	--	"nvim-telescope/telescope-fzf-native.nvim",
	--	run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	--})
	--use({ "stevearc/dressing.nvim" }) -- Use telescope for pickers

	-- Keymaps
	--use({ "mrjones2014/legendary.nvim" })
	--use({ "folke/which-key.nvim" })

	-- Marks
	--use({ "chentoast/marks.nvim" })
	--use({ "ThePrimeagen/harpoon" })

	-- Helpers
	--use({ "windwp/nvim-autopairs" })
	--use({ "numToStr/Comment.nvim" })
	--use({ "folke/lsp-colors.nvim" })
	--use({ "lukas-reineke/indent-blankline.nvim" })
	--use({ "ahmedkhalf/project.nvim" })
	--use({ "Shatur/neovim-session-manager" })
	--use({ "rcarriga/nvim-notify" })
	--use({ "numToStr/FTerm.nvim" })
	--use({ "folke/todo-comments.nvim" })
	--use({ "kevinhwang91/nvim-bqf" })


	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)