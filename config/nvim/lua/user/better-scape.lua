local ok, be = pcall(require, "better_escape")
if not ok then return end

be.setup {
	mapping = {"jk"},
	timeout = vim.o.timeoutlen,
	clear_empty_lines = false,
	keys = "<Esc>"
}
