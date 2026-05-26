vim.pack.add({ "https://github.com/nvim-mini/mini.files" })

local miniFiles = require("mini.files")
local map = vim.keymap.set

miniFiles.setup({
  mappings = {
    go_in_plus = "<CR>",
  },
})

map("n", "-", function()
  if MiniFiles.get_explorer_state() then
    MiniFiles.go_out()
  else
    MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
  end
end, { desc = "Open mini.files or go to parent directory" })

map("n", "<leader>t", function()
  if not MiniFiles.close() then
    MiniFiles.open()
  end
end, { desc = "Open mini.files at project root" })

local open_entry_in_split = function(split_command)
  local state = MiniFiles.get_explorer_state()
  local original_window = state.target_window

  local split_window = vim.api.nvim_win_call(original_window, function()
    vim.cmd(split_command .. " split")
    return vim.api.nvim_get_current_win()
  end)

  MiniFiles.set_target_window(split_window)
  MiniFiles.go_in()
  MiniFiles.close()
end

local register_split_mappings = function(buffer_id)
  vim.keymap.set("n", "<C-s>", function()
    open_entry_in_split("belowright horizontal")
  end, { buffer = buffer_id, desc = "Open in horizontal split" })

  vim.keymap.set("n", "<C-v>", function()
    open_entry_in_split("belowright vertical")
  end, { buffer = buffer_id, desc = "Open in vertical split" })

  vim.keymap.set("n", "<C-t>", function()
    open_entry_in_split("tab")
  end, { buffer = buffer_id, desc = "Open in new tab" })
end

vim.api.nvim_create_autocmd("User", {
  pattern = "MiniFilesBufferCreate",
  callback = function(event)
    register_split_mappings(event.data.buf_id)
  end,
})
