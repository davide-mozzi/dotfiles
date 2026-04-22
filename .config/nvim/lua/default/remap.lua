vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "<c-h>", ":bp<cr>")
vim.keymap.set("n", "<c-l>", ":bn<cr>")
vim.keymap.set("n", "+", '"+')
vim.keymap.set("n", "-", '"0')
vim.keymap.set("n", "<leader>c", "i# %%<cr>")
vim.keymap.set("n", "<leader>o", "o<esc>")
vim.keymap.set("n", "<leader>O", "O<esc>")

if vim.g.vscode == nil then
  vim.keymap.set("i", "jk", "<esc>")
  vim.keymap.set("i", "kj", "<esc>")

  vim.keymap.set("n", "<leader>s", function()
    require("conform").format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
    })
  end, { desc = "Conform format file ('s' for 'style')" })

  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>t", ":Telescope<cr>", { desc = "Telescope" })
  vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Telescope find files" })
  vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "Telescope live grep" })
  vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })

  local harpoon = require("harpoon")
  vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
  -- vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
  vim.keymap.set("n", "<c-s-h>", function() harpoon:list():prev() end)
  vim.keymap.set("n", "<c-s-l>", function() harpoon:list():next() end)
  vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
  vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
  vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
  vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
  vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
  vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
  vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
  vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
  vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)
  vim.keymap.set("n", "<leader>0", function() harpoon:list():select(10) end)

  local conf = require("telescope.config").values
  local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
      end

      require("telescope.pickers").new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
              results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
      }):find()
  end

  vim.keymap.set("n", "<leader>h", function() toggle_telescope(harpoon:list()) end,
      { desc = "Open harpoon window" })
end

vim.keymap.set("o", "H", "^")
vim.keymap.set("o", "L", "$")

vim.keymap.set("v", "H", "^")
vim.keymap.set("v", "L", "$")
vim.keymap.set("v", "+", '"+')
vim.keymap.set("v", "-", '"0')

vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set("t", "jk", "<c-\\><c-n>")
vim.keymap.set("t", "kj", "<c-\\><c-n>")
vim.keymap.set("t", "<c-w>", "<c-\\><c-n><c-w>")
