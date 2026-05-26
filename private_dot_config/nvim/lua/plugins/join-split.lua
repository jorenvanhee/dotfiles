vim.pack.add({ "https://github.com/Wansmer/treesj" })

local treesj = require("treesj")

vim.keymap.set("n", "gJ", treesj.join, { desc = "Join lines" })
vim.keymap.set("n", "gS", treesj.split, { desc = "Split into multiple lines" })
