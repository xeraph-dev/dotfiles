local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
   b.formatting.prettierd.with {
      filetypes = { "html", "markdown", "css", "json", "yaml", "scss", "sass", "jsonc", "graphql" },
   },

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

   -- C
   b.formatting.clang_format,

   -- Javascript
   b.code_actions.eslint_d.with {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
   },
   b.diagnostics.eslint_d.with {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
   },
   b.formatting.eslint_d.with {
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
   },

   -- Rust
   b.formatting.rustfmt,

   -- Toml
   b.formatting.taplo,

   -- Yaml
   b.diagnostics.yamllint,

   -- Zsh
   b.diagnostics.zsh,
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
