return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("neogen").setup({ snippet_engine = "luasnip" })
    local opts = { noremap = true, silent = true }

    vim.api.nvim_set_keymap("n", "<Leader>jf", ":lua require('neogen').generate({ type = 'func' })<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>jc", ":lua require('neogen').generate({ type = 'class' })<CR>", opts)
    vim.api.nvim_set_keymap("n", "<Leader>jt", ":lua require('neogen').generate({ type = 'type' })<CR>", opts)
  end,
}
