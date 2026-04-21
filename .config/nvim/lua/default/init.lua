vim.g.mapleader = " "

if vim.g.vscode == nil then
  vim.g.clipboard = "osc52"
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })
end

if vim.g.vscode == nil then
  require("default.lazy")

  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      -- python = { "isort", "black" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      -- rust = { "rustfmt", lsp_format = "fallback" },
      -- Conform will run the first available formatter
      -- javascript = { "prettierd", "prettier", stop_after_first = true },
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-type", "Spaces", "--indent-width", "2" },
      },
    },
    -- format_on_save = {
    --   -- These options will be passed to conform.format()
    --   timeout_ms = 500,
    --   lsp_format = "fallback",
    -- },
  })

  require("harpoon"):setup()

  local harpoon = require('harpoon')
end

require("default.remap")
require("default.set")
