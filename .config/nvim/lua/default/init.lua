vim.g.mapleader = " "

require("default.remap")
require("default.set")

if vim.g.vscode == nil then
  vim.g.clipboard = "osc52"
end
