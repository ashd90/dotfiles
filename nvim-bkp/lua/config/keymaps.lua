-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Floating Terminal Keymap
-- This uses Meta (Windows Key) + t to toggle a floating terminal
-- or you can use the standard <leader>ft
local function float_term()
  Snacks.terminal.toggle()
end

vim.keymap.set("n", "<A-t>", float_term, { desc = "Terminal (Float)" })
vim.keymap.set("t", "<A-t>", float_term, { desc = "Hide Terminal" })
