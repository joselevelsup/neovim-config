local present, lualine = pcall(require, "lualine")

if not present then
	return
end

lualine.setup{
	options = {
		theme = "tokyonight"
	},
  sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch'},
		lualine_c = {'filename', { "diagnostics", sources = { 'coc' }, symbols = {error = ' ', warn = ' ', info = ' '} }},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
  }
}
