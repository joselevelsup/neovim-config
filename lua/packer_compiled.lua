-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/skippy/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/skippy/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/skippy/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/skippy/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/skippy/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.dashboardconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/auto-pairs",
    url = "https://github.com/jiangmiao/auto-pairs"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/indentLine",
    url = "https://github.com/Yggdroot/indentLine"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.lualineconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.lspconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tabline"] = {
    config = { "\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.tablineconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-tabline",
    url = "https://github.com/seblj/nvim-tabline"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29plugins.treesitterconfig\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["reply.vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/reply.vim",
    url = "https://github.com/rhysd/reply.vim"
  },
  spaceduck = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/spaceduck",
    url = "https://github.com/pineapplegiant/spaceduck"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/srcery-vim",
    url = "https://github.com/srcery-colors/srcery-vim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.telescopeconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\1\2U\0\1\2\0\3\0\f7\1\0\0\a\1\1\0T\1\3€'\1\25\0H\1\2\0T\1\5€7\1\0\0\a\1\2\0T\1\2€'\1K\0H\1\2\0G\0\1\0\rvertical\15horizontal\14directionú\1\1\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0001\2\3\0:\2\5\0012\2\0\0:\2\6\1>\0\2\1G\0\1\0\20shade_filetypes\tsize\1\0\t\20shade_terminals\1\17open_mapping\n<C-\\>\14direction\rvertical\19shading_factor\3\1\20insert_mappings\2\17persist_size\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\0\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-maximizer",
    url = "https://github.com/szw/vim-maximizer"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-vinegar",
    url = "https://github.com/tpope/vim-vinegar"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/wal.vim",
    url = "https://github.com/dylanaraps/wal.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\3\0\0064\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\1G\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.lualineconfig\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.telescopeconfig\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\1\2U\0\1\2\0\3\0\f7\1\0\0\a\1\1\0T\1\3€'\1\25\0H\1\2\0T\1\5€7\1\0\0\a\1\2\0T\1\2€'\1K\0H\1\2\0G\0\1\0\rvertical\15horizontal\14directionú\1\1\0\3\0\a\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0001\2\3\0:\2\5\0012\2\0\0:\2\6\1>\0\2\1G\0\1\0\20shade_filetypes\tsize\1\0\t\20shade_terminals\1\17open_mapping\n<C-\\>\14direction\rvertical\19shading_factor\3\1\20insert_mappings\2\17persist_size\2\18close_on_exit\2\20start_in_insert\2\17hide_numbers\2\0\nsetup\15toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-tabline
time([[Config for nvim-tabline]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.tablineconfig\frequire\0", "config", "nvim-tabline")
time([[Config for nvim-tabline]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.dashboardconfig\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
