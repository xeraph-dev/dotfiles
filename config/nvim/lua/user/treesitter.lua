local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then return end

configs.setup {
	ensure_isntalled = "all",
	sync_install = false,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
	autopairs = {
		enable = true,
	},
	indent = {
		enable = true,
		disable = { "yaml" },
	},
 	rainbow = {
    enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
  },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
}
