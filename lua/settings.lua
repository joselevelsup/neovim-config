local set_option = vim.api.nvim_set_option

vim.opt.termguicolors = true

if vim.fn.has("clipboard") then
	if vim.fn.has("unnamedplus") then
		set_option("clipboard", "unnamedplus")
	else
		set_option("clipboard", "unnamed")
	end
end

set_option('encoding', 'utf-8')
set_option('number', true)
set_option('relativenumber', true)
set_option('t_Co', '256')
set_option('hidden', true)
set_option('background', 'dark')
set_option('syntax', 'enable')
set_option("history", 1000)
set_option("completeopt", "menuone,noselect")
set_option("guifont", "GohuFont Nerd Font:h12.5")
set_option("backupcopy", "yes")
set_option("tabstop", 2)
set_option("shiftwidth", 2)
set_option("softtabstop", 2)
set_option("expandtab", true)
set_option("smarttab", true)

vim.cmd("set shortmess+=c")
vim.cmd('filetype plugin indent on')
vim.g.monochrome_italic_comments = 1
vim.cmd('colorscheme srcery')

vim.g.dashboard_default_executive ='telescope'

vim.g.indentLine_fileTypeExclude = { 'dashboard' }
vim.g.indentLine_setConceal = 0

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

require"bufferline".setup{}

require"nvim-treesitter.configs".setup{
	ensure_installed = "maintained",
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true
	},
	indent = {
		enable = true
	}
}

require'lualine'.setup{
	options = {
		theme = "codedark"
	},
  sections = {
	lualine_a = {'mode'},
	lualine_b = {'branch'},
	lualine_c = {'filename', { "diagnostics", sources = { 'coc' }, symbols = {error = ' ', warn = ' ', info = ' '} }},
	    -- lualine_d = { "diagnostics", sources = {'coc'}},
	    -- lualine_d = {'coc#status'},
	    -- lualine_d = { 'mode', { 'diagnostics', sources = {'coc'}},
	lualine_x = {'encoding', 'fileformat', 'filetype'},
	lualine_y = {'progress'},
	lualine_z = {'location'}
  }

}

require'telescope'.setup{
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    prompt_prefix = "> ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
      },
      vertical = {
        mirror = false,
      },
    },
    file_sorter =  require'telescope.sorters'.get_fuzzy_file,
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    path_display = {},
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,

    -- Developer configurations: Not meant for general override
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker
  }
}

require "neogit".setup{}
