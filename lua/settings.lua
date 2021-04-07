local set_option = vim.api.nvim_set_option

if vim.fn.exists('+termguicolors') == 1 then
	set_option('termguicolors', true)
end

if vim.fn.has("clipboard") then
	if vim.fn.has("unnamedplus") then
		set_option("clipboard", "unnamedplus")
	else
		set_option("clipboard", "unnamed")
	end
end

set_option('encoding', 'utf-8')
set_option('ignorecase', true)
set_option('number', true)
set_option('t_Co', '256')
set_option('conceallevel', 1)
set_option('hidden', true)
set_option('background', 'dark')
set_option('syntax', 'enable')
set_option("history", 1000)
set_option("completeopt", "menuone,noinsert,noselect")

vim.cmd("set shortmess+=c")
vim.cmd('filetype plugin indent on')
vim.cmd('colorscheme spaceduck')

-- NERDTree Config
vim.g.NERDTreeQuitOnOpen = 1
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeIgnore = { ".pyc", "node_modules" }

-- BarBar Config
vim.api.nvim_set_var("bufferline", { icons = false, clickable = false, closable = false, maximum_padding = 3 })

-- Lightline Config
vim.api.nvim_set_var("lightline", { colorscheme = "spaceduck", active = { left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified" } } }, component_function = { gitbranch = 'gitbranch#name' }  })

-- Closetag Config
local closetag_region_dict = {}
closetag_region_dict["typescript.tsx"] = "jsxRegion,tsxRegion"
closetag_region_dict["javascript.jsx"] = "jsxRegion"

local user_emmet_settings_dict = {}
user_emmet_settings_dict["javascript.jsx"] = { extends = 'jsx' }

vim.api.nvim_set_var("closetag_regions", closetag_region_dict)
vim.api.nvim_set_var("closetag_filenames", "*.html,*.jsx,*.tsx,*.js")

vim.api.nvim_set_var("vim_jsx_pretty_colorful_config", 1)

-- Emmet Config
vim.api.nvim_set_var("user_emmet_mode", 'inv')
vim.api.nvim_set_var("user_emmet_settings", user_emmet_settings_dict)

-- LSP Config (recommended from https://github.com/kabouzeid/nvim-lspinstall#advanced-configuration-recommended)
vim.api.nvim_set_var("completion_trigger_keyword_length", 2)

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{on_attach=require'completion'.on_attach}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

