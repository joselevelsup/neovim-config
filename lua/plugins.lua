local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Status Bar
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- use { 'neoclide/coc.nvim', branch = 'release' }
  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'Raimondi/delimitMate'
  use 'mattn/emmet-vim'
  use 'tpope/vim-commentary'
  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
  }
  use 'ryanoasis/vim-devicons'
  use 'editorconfig/editorconfig-vim'
  use 'terryma/vim-multiple-cursors'
  use 'Yggdroot/indentLine'
  use 'szw/vim-maximizer'
  use 'jparise/vim-graphql'
  use 'rhysd/reply.vim'
  use 'airblade/vim-rooter'
  use 'jiangmiao/auto-pairs'
  use 'dylanaraps/wal.vim'
  use { 'pineapplegiant/spaceduck', branch = 'main' }
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use 'voldikss/vim-floaterm'
  use {
	'nvim-telescope/telescope.nvim',
	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use 'glepnir/dashboard-nvim'
  use 'folke/tokyonight.nvim'
  use 'srcery-colors/srcery-vim'
  use 'tpope/vim-vinegar'
	use {
		'neoclide/coc.nvim',
		branch = "release"
	}
	use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
end)

