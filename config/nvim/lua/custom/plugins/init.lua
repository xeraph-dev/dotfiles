return {
   ["github/copilot.vim"] = {},
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.null-ls").setup()
      end,
   },
   ["puremourning/vimspector"] = {},
   ["wakatime/vim-wakatime"] = {},
   ["rescript-lang/vim-rescript"] = {},
}
