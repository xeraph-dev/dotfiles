local M = {}

M.ui = {
   theme = "onedark",
   transparency = true,
}

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins",
}

return M
