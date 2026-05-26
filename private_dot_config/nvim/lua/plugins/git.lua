vim.pack.add({ "https://github.com/echasnovski/mini.diff" })

local diff = require("mini.diff")

diff.setup({
  view = {
    -- 'sign' adds symbols in the sign column, 'number' tints the line numbers
    style = "sign",
    signs = { add = "+", change = "~", delete = "_" },
  },
  mappings = {
    apply = "",
    reset = "",
    textobject = "",
    goto_first = "",
    goto_prev = "",
    goto_next = "",
    goto_last = "",
  },
})

local map = vim.keymap.set

map("n", "]c", function()
  diff.goto_hunk("next")
  vim.cmd("normal! zz")
end, { desc = "Next hunk (centered)" })

map("n", "[c", function()
  diff.goto_hunk("prev")
  vim.cmd("normal! zz")
end, { desc = "Previous hunk (centered)" })

map("n", "]C", function()
  diff.goto_hunk("last")
  vim.cmd("normal! zz")
end, { desc = "Last hunk (centered)" })

map("n", "[C", function()
  diff.goto_hunk("first")
  vim.cmd("normal! zz")
end, { desc = "First hunk (centered)" })

map("n", "<leader>hs", function()
  local current_line_number = vim.fn.line(".")
  diff.do_hunks(0, "apply", { line_start = current_line_number, line_end = current_line_number })
end, { desc = "Stage hunk" })

map("n", "<leader>hr", function()
  local current_line_number = vim.fn.line(".")
  diff.do_hunks(0, "reset", { line_start = current_line_number, line_end = current_line_number })
end, { desc = "Reset hunk" })

map("n", "<leader>hi", function()
  diff.toggle_overlay()
end, { desc = "Toggle diff overlay" })

map("n", "<leader>hS", function()
  vim.cmd("!git add %")
end, { desc = "Stage entire file" })
