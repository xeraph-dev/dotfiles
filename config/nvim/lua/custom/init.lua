-- MAPPINGS
local map = require("core.utils").map

map("n", "<leader>cc", ":Telescope <CR>")
map("n", "<leader>q", ":q <CR>")

-- Viminspector
map("n", "<F5>", "<Plug>VimspectorContinue")
map("n", "<S-F5>", "<Plug>VimspectorStop")
map("n", "<C-S-F5>", "<Plug>VimspectorRestart")
map("n", "<F6>", "<Plug>VimspectorPause")
map("n", "<F9>", "<Plug>VimspectorToggleBreakpoint")
map("n", "<S-F9>", "<Plug>VimspectorAddFunctionBreakpoint")
map("n", "<F10>", "<Plug>VimspectorStepOver")
map("n", "<F11>", "<Plug>VimspectorStepInto")
map("n", "<S-F11>", "<Plug>VimspectorStepOut")
map("n", "<leader>vs", ":vsplit<CR>")
map("n", "<leader>hs", ":split<CR>")

-- navigation between windows
map("n", "<C-S-Left>", "<C-w>h")
map("n", "<C-S-Right>", "<C-w>l")
map("n", "<C-S-Up>", "<C-w>k")
map("n", "<C-S-Down>", "<C-w>j")
