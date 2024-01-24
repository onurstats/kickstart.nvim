
return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      html = { filetypes = { "html", "twig", "hbs" } },
      jsonls = {},
      stylelint_lsp = { filetypes = { "scss", "css" } },
      cssls = {},
      --theme_check = {}, tooo slow to work with
    },
  },
}
