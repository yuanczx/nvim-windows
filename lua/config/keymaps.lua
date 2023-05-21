-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local file_type = vim.fn.expand("%:e")
local cmd = ""

local function run_code()
  if file_type == "py" then
    cmd = "pyfile %"
  end
  vim.cmd(cmd)
end

vim.keymap.set("i", "jk", "<ESC>", { noremap = true })
vim.keymap.set("n", "<leader>r", run_code, { noremap = true })
vim.keymap.set("n", "<leader>d", ":split term://pwsh<Cr>")
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.cmd([[:tnoremap <Esc> <C-\><C-n>]])
vim.cmd([[:tnoremap jk <C-\><C-n>]])
