vim.g.mapleader = ","

vim.opt.number = true
vim.opt.relativenumber = true

-- Persist undo history to disk so you can undo even after closing and reopening a file.
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable break indent so wrapped lines keep the same indentation.
vim.opt.breakindent = true

-- Configure how new splits should be opened.
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Highlight line your cursor is on.
vim.opt.cursorline = true

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s).
vim.opt.confirm = true

-- Default tab settings.
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- Preview substitutions live, as you type.
vim.opt.inccommand = "split"

-- Keep signcolumn on by default.
vim.opt.signcolumn = "yes"

-- Makes it easier to see where the text ends in a hover window.
vim.opt.winborder = "rounded"
