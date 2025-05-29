-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "zj", "o<esc>k", { desc = "Add empty line below." })
map("n", "zk", "O<esc>j", { desc = "Add empty line above." })
