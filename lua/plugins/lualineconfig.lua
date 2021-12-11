local present, lualine = pcall(require, "lualine")

if not present then
	return
end

lualine.setup{
	options = {
		theme = "tokyonight",
		section_separators = {
			left = "",
			right = ""
		}
	},
  sections = {
		lualine_a = { {'mode'} },
		lualine_b = { {'branch'} },
		lualine_c = { {'filename'} },
		lualine_x = { {'encoding', 'fileformat', 'filetype'} },
		lualine_y = { {'progress'} },
		lualine_z = { {'location'} }
  }
}
