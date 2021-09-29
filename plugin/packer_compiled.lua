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
  local success, result = pcall(loadstring(s))
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
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  delimitMate = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/delimitMate"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.lualineconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.lspconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tabline"] = {
    config = { "\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.tablineconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-tabline"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\0028\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\29plugins.treesitterconfig\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["reply.vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/reply.vim"
  },
  spaceduck = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/spaceduck"
  },
  ["srcery-vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/srcery-vim"
  },
  ["telescope-project.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.telescopeconfig\frequire\0" },
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-graphql"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  ["wal.vim"] = {
    loaded = true,
    path = "/home/skippy/.local/share/nvim/site/pack/packer/start/wal.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.lualineconfig\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\0021\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\22plugins.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tabline
time([[Config for nvim-tabline]], true)
try_loadstring("\27LJ\1\0025\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\26plugins.tablineconfig\frequire\0", "config", "nvim-tabline")
time([[Config for nvim-tabline]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\0027\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\28plugins.telescopeconfig\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
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
