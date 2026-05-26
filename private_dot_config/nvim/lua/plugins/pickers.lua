vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua",
})

local map = vim.keymap.set
local fzf = require("fzf-lua")

fzf.setup({
  -- Preview scrolling is mapped in both sections because the builtin
  -- previewer (a Neovim buffer) only responds to builtin maps, while
  -- native previewers (bat/cat) only respond to fzf maps.
  --
  -- Non-preview actions like toggle-all only need fzf since fzf
  -- handles them directly.
  keymap = {
    builtin = {
      ["<C-u>"] = "preview-half-page-up",
      ["<C-d>"] = "preview-half-page-down",
    },
    fzf = {
      ["ctrl-u"] = "preview-half-page-up",
      ["ctrl-d"] = "preview-half-page-down",
      ["alt-a"] = "toggle-all",
    },
  },
})

map("n", "<Space>f", fzf.files, { desc = "Find files" })
map("n", "<Space>'", fzf.resume, { desc = "Resume previous picker" })
map("n", "<Space>p", fzf.builtin, { desc = "Show all fzf-lua pickers" })
map("n", "<Space>g", fzf.git_status, { desc = "Git status files" })
map("n", "<Space>/", fzf.live_grep, { desc = "Search through codebase" })
map("n", "<Space>s", fzf.lsp_document_symbols, { desc = "Document symbols" })
