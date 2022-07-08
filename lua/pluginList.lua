local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup({function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

	-- Hydra keymaps
	use { 
		'anuvyklack/hydra.nvim',
		requires = 'anuvyklack/keymap-layer.nvim',
		config = function ()
			require "plugins.hydraconfig"
		end
	}
	-- Status Bar
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require "plugins.lualineconfig"
		end
	}

	use {
		'kdheepak/tabline.nvim',
		config = function()
			require "plugins.tabconfig"
		end,
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		event = "BufRead",
		config = function()
			require "plugins.treesitterconfig"
		end
	}

	use { 
		'goolord/alpha-nvim',
		config = function()
			require "plugins.dashboardconfig"
		end
	}

	use {
		'TimUntersberger/neogit',
		requires = {
			'nvim-lua/plenary.nvim',
			'sindrets/diffview.nvim'
		},
		config = function()
			require("neogit").setup{
				integrations = {
					diffview = true
				}
			}
		end
	}

	use 'mrjones2014/smart-splits.nvim'

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
		config = function()
			require "plugins.telescopeconfig"
		end
	}

	use "ahmedkhalf/project.nvim"
	use "nvim-telescope/telescope-project.nvim"
	use "nvim-telescope/telescope-file-browser.nvim"

	use { 
		'neovim/nvim-lspconfig',
		requires = {
			{'williamboman/nvim-lsp-installer'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'L3MON4D3/LuaSnip'},
			{'saadparwaiz1/cmp_luasnip'},
			{'rafamadriz/friendly-snippets'},
			{'jose-elias-alvarez/null-ls.nvim'}
		},
		event = "BufRead",
		config = function()
			require "plugins.lspconfig"
		end
	}

	use "ray-x/lsp_signature.nvim"
	use "alvan/vim-closetag"
  use 'tpope/vim-surround'
  use 'mattn/emmet-vim'
  use 'tpope/vim-commentary'
  use 'editorconfig/editorconfig-vim'
	use "lukas-reineke/indent-blankline.nvim"
  use {
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup()
		end
	}
	-- use 'szw/vim-maximizer'
  use 'jparise/vim-graphql'
	use {
		"windwp/nvim-autopairs",
			config = function() require("nvim-autopairs").setup {} end
	}

	-- Colorschemes
  use {
		'pineapplegiant/spaceduck',
		branch = 'main',
	}
  use 'folke/tokyonight.nvim'
  use 'srcery-colors/srcery-vim'
	use 'marko-cerovac/material.nvim'
	use "EdenEast/nightfox.nvim"
	use 'rebelot/kanagawa.nvim'
	use 'Domeee/mosel.nvim'

	use 'lewis6991/impatient.nvim'

end,
	config = {
		compile_path = vim.fn.stdpath('config')..'/plugin/packer_compiled.lua'
	}})

