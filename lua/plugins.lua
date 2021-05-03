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
  use 'itchyny/lightline.vim'
  use 'itchyny/vim-gitbranch'

  use 'alvan/vim-closetag'
  use 'tpope/vim-surround'
  use 'airblade/vim-gitgutter'
  use 'Raimondi/delimitMate'
  use 'mattn/emmet-vim'
  use 'tpope/vim-commentary'
  use 'sheerun/vim-polyglot'
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
  use 'mhinz/vim-startify'
  use { 'pineapplegiant/spaceduck', branch = 'main' }
  use 'romgrk/barbar.nvim'
  use 'voldikss/vim-floaterm'
  use { 'neoclide/coc.nvim', branch = "release" }
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/completion-nvim'
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  -- }
  -- use 'nvim-telescope/telescope-media-files.nvim'
  use 'jdonaldson/vaxe'
  use 'skywind3000/asynctasks.vim'
  use 'skywind3000/asyncrun.vim'
  use 'kevinhwang91/rnvimr'
end)

