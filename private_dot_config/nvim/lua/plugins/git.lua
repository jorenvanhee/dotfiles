vim.pack.add({
  "https://github.com/lewis6991/gitsigns.nvim",
  "https://github.com/esmuellert/codediff.nvim",
})

local gitsigns = require("gitsigns")

gitsigns.setup({
  signs = {
    add = { text = "+" },
    change = { text = "~" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
  },
})

local codediff = require("codediff")

codediff.setup({
  diff = { layout = "inline" },
  explorer = { view_mode = "tree" },
})

vim.api.nvim_create_autocmd("User", {
  pattern = "CodeDiffOpen",
  callback = function()
    gitsigns.toggle_signs(false)
  end,
})

vim.api.nvim_create_autocmd("User", {
  pattern = "CodeDiffClose",
  callback = function()
    gitsigns.toggle_signs(true)
  end,
})

local map = vim.keymap.set

map("n", "]c", function()
  gitsigns.nav_hunk("next")
  vim.cmd("normal! zz")
end, { desc = "Next hunk (centered)" })

map("n", "[c", function()
  gitsigns.nav_hunk("prev")
  vim.cmd("normal! zz")
end, { desc = "Previous hunk (centered)" })

map("n", "]C", function()
  gitsigns.nav_hunk("last")
  vim.cmd("normal! zz")
end, { desc = "Last hunk (centered)" })

map("n", "[C", function()
  gitsigns.nav_hunk("first")
  vim.cmd("normal! zz")
end, { desc = "First hunk (centered)" })

map("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage hunk" })
map("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage buffer" })

map("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset hunk" })
map("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset buffer" })

map("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
map("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })

map("n", "<leader>hb", function()
  gitsigns.blame_line({ full = true })
end, { desc = "Blame line" })

map("n", "<leader>hB", function()
  gitsigns.blame()
end, { desc = "Blame buffer" })

map("n", "<leader>df", "<cmd>CodeDiff file HEAD<cr>", { desc = "Diff file against HEAD" })
map("n", "<leader>da", "<cmd>CodeDiff<cr>", { desc = "Diff all changes" })
