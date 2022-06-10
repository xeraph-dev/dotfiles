local ok, null_ls = pcall(require, "null-ls")
if not ok then
	return
end

local f = null_ls.builtins.formatting
local d = null_ls.builtins.diagnostics
local ca = null_ls.builtins.code_actions

null_ls.setup({
	debug = false,
	sources = {
		f.prettier.with({
			filetypes = { "html", "markdown", "css", "json", "yaml", "scss", "sass", "jsonc", "graphql" },
		}),

		-- Lua
		f.stylua,
		d.luacheck.with({ extra_args = { "--global vim" } }),

		-- Shell
		f.shfmt,
		ca.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),
		d.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

		-- C
		f.clang_format,

		-- Javascript
		ca.eslint.with({
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
		}),
		d.eslint.with({
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
		}),
		f.eslint.with({
			filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
		}),

		-- Rust
		f.rustfmt,

		-- Toml
		f.taplo,

		-- Yaml
		d.yamllint,

		-- Zsh
		d.zsh,

		-- markdown
		f.markdownlint,
		d.markdownlint,

		-- Go
		f.gofmt
	},
})
