return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
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
      ["handlebars"] = { "prettierd", "prettier" }
    },

  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
