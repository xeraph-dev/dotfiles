local ok, null_ls = pcall(require, "null-ls")

if not ok then
   return
end

local b = null_ls.builtins
local f = b.formatting
local d = b.diagnostics

local sources = {
   -- Lua
   f.stylua,

   -- Shell
   f.shfmt,
   d.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

null_ls.setup {
   debug = true,
   sources = sources,
}
