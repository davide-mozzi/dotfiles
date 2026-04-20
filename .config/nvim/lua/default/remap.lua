vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "<c-h>", ":bp<cr>")
vim.keymap.set("n", "<c-l>", ":bn<cr>")
vim.keymap.set("n", "+", "\"+")
vim.keymap.set("n", "-", "\"0")
vim.keymap.set("n", "<leader>c", "i# %%<cr>")
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

vim.keymap.set("o", "H", "^")
vim.keymap.set("o", "L", "$")

vim.keymap.set("v", "H", "^")
vim.keymap.set("v", "L", "$")

if vim.g.vscode == nil then
  vim.keymap.set("i", "jk", "<esc>")
  vim.keymap.set("i", "kj", "<esc>")
end
