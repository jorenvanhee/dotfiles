local Remap = require("joren.keymap")
local noremap = Remap.noremap
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap

-- Go to normal mode.
inoremap("jf", "<Esc>")

-- Goto mode mappings, inspired by Helix.
-- Caret needs an escape because it's a dead key on azerty.
nnoremap("gh", "^<Esc>", "Line start")
xnoremap("gh", "^", "Line start")
nnoremap("gl", "$", "Line end")
xnoremap("gl", "$", "Line end")
nnoremap("gd", require("telescope.builtin").lsp_definitions, "Definition")
nnoremap("gi", require("telescope.builtin").lsp_implementations, "Implementation")
nnoremap("gr", require("telescope.builtin").lsp_references, "References")
nnoremap("gt", require("telescope.builtin").lsp_type_definitions, "Type definition")

-- Space mode mappings, inspired by Helix
nnoremap("<Space>f", require("telescope.builtin").find_files, "Open file picker")
nnoremap("<Space>b", require("telescope.builtin").buffers, "Open buffer picker")
nnoremap("<Space>j", require("telescope.builtin").jumplist, "Open jumplist picker")
nnoremap("<Space>s", require("telescope.builtin").lsp_document_symbols, "Open symbol picker")
nnoremap("<Space>S", require("telescope.builtin").lsp_workspace_symbols, "Open workspace symbol picker")
nnoremap("<Space>d", function()
    require("telescope.builtin").diagnostics({ bufnr = 0 })
end, "Open diagnostic picker")
nnoremap("<Space>'", require("telescope.builtin").resume, "Open last picker")
nnoremap("<Space>/", require("telescope.builtin").live_grep, "Global search in workspace")
nnoremap("<Space>?", require("telescope.builtin").commands, "Open command palette")

-- Remove search highlight.
nnoremap("<Leader><Space>", ":nohlsearch<CR>", "Remove search highlight")

-- Better pane navigation.
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")
nnoremap("<C-h>", "<C-w><C-h>")
nnoremap("<C-l>", "<C-w><C-l>")

-- Nvim tree.
nnoremap("<Leader>t", ":NvimTreeToggle<CR>", "Toggle file explorer")
nnoremap("<Leader>gt", ":NvimTreeFindFileToggle<CR>", "Toggle file explorer with current file open")

-- Faster tab navigation.
nnoremap("<Leader>1", "1gt", "Tab 1")
nnoremap("<Leader>2", "2gt", "Tab 2")
nnoremap('<Leader>3', "3gt", "Tab 3")
nnoremap("<Leader>4", "4gt", "Tab 4")
nnoremap("<Leader>5", "5gt", "Tab 5")
nnoremap("<Leader>6", "6gt", "Tab 6")
nnoremap("<Leader>7", "7gt", "Tab 7")
nnoremap("<Leader>8", "8gt", "Tab 8")
nnoremap("<Leader>9", "9gt", "Tab 9")

-- Center the screen after navigating to the next and previous search results.
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

-- Close buffers
nnoremap("<Leader>x", ":bufdo bd<CR>", "Close all buffers")
nnoremap("<Leader>X", ":bufdo bd!<CR>", "Force close all buffers")

-- Copy current file and line number to clipboard.
--
-- Sources:
-- https://www.nesono.com/node/448
-- https://stackoverflow.com/questions/4525261/getting-relative-paths-in-vim
nnoremap("<Leader>yy", ":let @+=expand('%:~:.').':'.line('.')<CR>", "Copy current filename and line number")

-- Format code with null-ls
nnoremap("<Leader>f", ":lua vim.lsp.buf.format({ async = true })<CR>", "Format buffer")
