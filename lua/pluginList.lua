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

	-- Status Bar
	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = function()
			require "plugins.lualineconfig"
		end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		event = "BufRead",
		config = function()
			require "plugins.treesitterconfig"
		end
	}

	use 'tpope/vim-vinegar'

	use 'sbdchd/neoformat'

	use 'ryanoasis/vim-devicons'

	use {
		'seblj/nvim-tabline',
		config = function()
			require("plugins.tablineconfig")
		end
	}

	use {
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup{
				size = function(term)
					if term.direction == "horizontal" then
						return 25
					elseif term.direction == "vertical" then
						return 75
					end
				end,
				open_mapping = [[<C-\>]],
				direction = "vertical",
				hide_numbers = true, -- hide the number column in toggleterm buffers
				shade_filetypes = {},
				shade_terminals = false,
				shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
				start_in_insert = true,
				insert_mappings = true, -- whether or not the open mapping applies in insert mode
				persist_size = true,
				close_on_exit = true,
			}
		end
	}

	use { 
		'goolord/alpha-nvim',
		config = function()
			require "plugins.dashboardconfig"
		end
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
		config = function()
			require "plugins.telescopeconfig"
		end
	}

	use "ahmedkhalf/project.nvim"

	use "nvim-telescope/telescope-project.nvim"

	use {
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end
	}

	use { 
		'neovim/nvim-lspconfig',
		requires = {
			{'williamboman/nvim-lsp-installer'}, 
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'}, 
			{'hrsh7th/cmp-buffer'}, 
			{'L3MON4D3/LuaSnip'},
			{'saadparwaiz1/cmp_luasnip'},
			{'onsails/lspkind-nvim'},
			{'rafamadriz/friendly-snippets'}
		},
		config = function()
			require "plugins.lspconfig"
		end
	}

	use "ray-x/lsp_signature.nvim"
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'mattn/emmet-vim'
  use 'tpope/vim-commentary'
  use 'editorconfig/editorconfig-vim'
  use 'Yggdroot/indentLine'
  use 'szw/vim-maximizer'
  use 'jparise/vim-graphql'
  use 'rhysd/reply.vim'
  use 'airblade/vim-rooter'
  use 'jiangmiao/auto-pairs'

	-- Colorschemes
  use 'dylanaraps/wal.vim'
  use {
		'pineapplegiant/spaceduck',
		branch = 'main',
	}
  use 'folke/tokyonight.nvim'
  use 'srcery-colors/srcery-vim'
	use 'marko-cerovac/material.nvim'
	use 'rebelot/kanagawa.nvim'

	use 'lewis6991/impatient.nvim'

end,
	config = {
		compile_path = vim.fn.stdpath('config')..'/plugin/packer_compiled.lua'
	}})

