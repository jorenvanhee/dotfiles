local map = vim.keymap.set

map("i", "jf", "<Esc>", { desc = "Exit insert mode" })

-- Alternatives for ^ and $.
map("n", "gh", "^", { desc = "Go to beginning of line" })
map("n", "gl", "$", { desc = "Go to end of line" })

-- Kitty remaps Cmd+S to F1 and Cmd+C to F3 (see kitty.conf).
-- This lets us use familiar macOS shortcuts inside neovim.
map({ "n", "i", "v" }, "<f1>", "<Esc>:w<CR>", { desc = "Save file (exit insert/visual mode)" })
map("v", "<f3>", '"+y', { desc = "Yank selection to system clipboard" })
map("n", "<f3>", function()
  local relative_path = vim.fn.expand("%:~:.")
  local line_number = vim.fn.line(".")
  local location = relative_path .. ":" .. line_number
  vim.fn.setreg("+", location)
end, { desc = "Yank file path and line number to system clipboard" })

map("n", "<leader><Space>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

map("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Delete current buffer" })

map("n", "<leader>bo", function()
  local current_buffer = vim.api.nvim_get_current_buf()
  local buffers = vim.api.nvim_list_bufs()

  for _, buffer in ipairs(buffers) do
    local is_not_current = buffer ~= current_buffer
    local is_valid = vim.api.nvim_buf_is_valid(buffer) -- not already deleted
    local is_listed = vim.bo[buffer].buflisted -- visible in :ls (skips e.g. terminals, help windows)
    local has_unsaved_changes = vim.bo[buffer].modified

    if is_not_current and is_valid and is_listed and not has_unsaved_changes then
      vim.api.nvim_buf_delete(buffer, {})
    end
  end
end, { desc = "Delete other buffers" })

map("n", "<leader>ba", function()
  local buffers = vim.api.nvim_list_bufs()

  for _, buffer in ipairs(buffers) do
    local is_valid = vim.api.nvim_buf_is_valid(buffer) -- not already deleted
    local is_listed = vim.bo[buffer].buflisted -- visible in :ls (skips e.g. terminals, help windows)
    local has_unsaved_changes = vim.bo[buffer].modified

    if is_valid and is_listed and not has_unsaved_changes then
      vim.api.nvim_buf_delete(buffer, {})
    end
  end
end, { desc = "Delete all buffers" })

-- Tab navigation with leader + 1-9.
for i = 1, 9 do
  map("n", "<leader>" .. i, i .. "gt", { desc = "Go to tab " .. i })
end
