local DashboardConfig = require("plugins.dashboardconfig")

vim.opt.termguicolors = true

if vim.fn.has("clipboard") then
	if vim.fn.has("unnamedplus") then
		vim.o.clipboard = 'unnamedplus'
	else
		vim.o.clipboard = 'unnamed'
	end
end


vim.go.encoding = 'utf-8'
vim.go.hidden = false
vim.go.number = true
vim.go.t_Co = '256'
vim.go.background = 'dark'
vim.go.syntax = 'enable'
vim.go.history = 1000
vim.go.completeopt = "menuone,noselect"
vim.go.guifont = "FiraCode Nerd Font:h10.5"
vim.go.backupcopy = 'yes'
vim.go.tabstop = 2
vim.go.shiftwidth = 2
vim.go.softtabstop = 2
vim.go.expandtab = true
vim.go.smarttab = true

vim.cmd("set shortmess+=c")
vim.cmd('filetype plugin indent on')
vim.cmd('colorscheme spaceduck')

vim.g.netrw_liststyle = 3


vim.g.indentLine_fileTypeExclude = { 'dashboard' }
vim.g.indentLine_setConceal = 0

-- Closetag Config
local closetag_region_dict = {}
closetag_region_dict["typescript.tsx"] = "jsxRegion,tsxRegion"
closetag_region_dict["javascript.jsx"] = "jsxRegion"

local user_emmet_settings_dict = {}
user_emmet_settings_dict["javascript.jsx"] = { extends = 'jsx' }

vim.g.closetag_regions = closetag_region_dict
vim.g.closetag_filenames = "*.html,*.jsx,*.tsx,*.js"
vim.g.vim_jsx_pretty_colorful_config = 1

-- Emmet Config
vim.g.user_emmet_mode = 'inv'
vim.g.user_emmet_settings = user_emmet_settings_dict

vim.g.dashboard_default_executive ='telescope'

vim.g.dashboard_custom_section = DashboardConfig.dashboard_main_menu

vim.g.dashboard_custom_header = DashboardConfig.dashboard_header

vim.g.dashboard_custom_footer = DashboardConfig.dashboard_footer
