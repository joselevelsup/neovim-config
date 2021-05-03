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
set_option('relativenumber', true)
set_option('t_Co', '256')
set_option('conceallevel', 1)
set_option('hidden', true)
set_option('background', 'dark')
set_option('syntax', 'enable')
set_option("history", 1000)
set_option("completeopt", "menuone,noinsert,noselect")
set_option("guifont", "GohuFont Nerd Font:h12.5")
set_option("backupcopy", "yes")

vim.cmd("set shortmess+=c")
vim.cmd('filetype plugin indent on')
vim.cmd('colorscheme spaceduck')

vim.g.rnvimr_ex_enable = 0
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_bw_enable = 1

-- BarBar Config
vim.api.nvim_set_var("bufferline", { icons = false, clickable = false, maximum_padding = 3 })

-- Lightline Config
vim.api.nvim_set_var("lightline", { colorscheme = "spaceduck", active = { left = { { "mode", "paste" }, { "gitbranch", "readonly", "filename", "modified", "poetv#statusline()" } } }, component_function = { gitbranch = 'gitbranch#name' }  })

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

local disabled_syntaxes = {"haxe"}
vim.api.nvim_set_var("polyglot_disabled", disabled_syntaxes)

vim.api.nvim_set_var("asyncrun_open", 6)

