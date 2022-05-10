local present, treesitter_config = pcall(require, "nvim-treesitter.configs")

if not present then
	return
end

treesitter_config.setup{
	ensure_installed = {
		"bash",
		"css",
		"dockerfile",
		"go",
		"gomod",
		"graphql",
		"javascript",
		"json",
		"jsonc",
		"lua",
		"typescript",
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true
	},
	indent = {
		enable = true
	}
}
