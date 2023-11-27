return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>fm",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      ["javascript"] = { "prettierd", "prettier" },
      ["javascriptreact"] = { "prettierd", "prettier" },
      ["typescript"] = { "prettierd", "prettier" },
      ["typescriptreact"] = { "prettierd", "prettier" },
      ["vue"] = { "prettierd", "prettier" },
      ["liquid"] = { "prettier" },
      ["css"] = { "stylelint", "prettierd", "prettier" },
      ["scss"] = { "stylelint", "prettierd", "prettier" },
      ["less"] = { "prettierd", "prettier" },
      ["html"] = { "prettierd", "prettier" },
      ["json"] = { "prettierd", "prettier" },
      ["jsonc"] = { "prettierd", "prettier" },
      ["yaml"] = { "prettierd", "prettier" },
      ["markdown"] = { "prettierd", "prettier" },
      ["markdown.mdx"] = { "prettierd", "prettier" },
      ["graphql"] = { "prettierd", "prettier" },
      ["handlebars"] = { "prettierd", "prettier" },
    },
  },
}
