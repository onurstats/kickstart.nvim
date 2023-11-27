return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    autoformat = false,

    servers = {
      theme_check = {},
    },
  },
}
