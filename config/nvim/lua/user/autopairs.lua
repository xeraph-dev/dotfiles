local ok, npairs = pcall(require, "nvim-autopairs")
if not ok then return end

npairs.setup {
	check_ts = true,
	ts_config = {
		lua = { "string", "source"},
		javascript = { "string", "template_string" },
	},
	disable_filetype = {"TelescopePromp", "spectre_panel"},
	fast_wrap = {
		map = "<M-e>",
		chars = { "{", "[", "(", '"', "'"},
		pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
		offset = 0,
		keys = "qwertyuiopzxcvbnmasdfghjkl",
		check_comma = true,
		highlight = "PmenuSel",
		highlight_grey = "LineNr",
	},
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { text = "" } })
