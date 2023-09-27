-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- delete lazynvim built-in keymaps
vim.keymap.del({ "n", "x" }, "j")
vim.keymap.del({ "n", "x" }, "k")
-- setting for rainbowhxch/accelerated-jk.nvim plugin
vim.api.nvim_set_keymap("n", "j", "<Plug>(accelerated_jk_gj)", {})
vim.api.nvim_set_keymap("n", "k", "<Plug>(accelerated_jk_gk)", {})