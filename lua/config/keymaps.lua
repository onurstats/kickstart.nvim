-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move Selected Up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move Selected Down" })

-- Center Promt Line On Page Down Up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste Multiple Times" })

-- next greatest remap ever : asbjornHaland
-- yank to the system clipboard registry
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to the clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete to the blackhole registry
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete Without Put to the Registry" })
