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
nnoremap("gh", "^<Esc>", "line start")
xnoremap("gh", "^", "line start")
nnoremap("gl", "$", "line end")
xnoremap("gl", "$", "line end")
nnoremap("gd", require("telescope.builtin").lsp_definitions, "definition")
nnoremap("gi", require("telescope.builtin").lsp_implementations, "implementation")
nnoremap("gr", require("telescope.builtin").lsp_references, "references")
nnoremap("gt", require("telescope.builtin").lsp_type_definitions, "type definition")

-- Space mode mappings, inspired by Helix
nnoremap("<Space>f", require("telescope.builtin").find_files, "open file picker")
nnoremap("<Space>b", require("telescope.builtin").buffers, "open buffer picker")
nnoremap("<Space>j", require("telescope.builtin").jumplist, "open jumplist picker")
nnoremap("<Space>s", require("telescope.builtin").lsp_document_symbols, "open symbol picker")
nnoremap("<Space>S", require("telescope.builtin").lsp_workspace_symbols, "open workspace symbol picker")
nnoremap("<Space>d", function()
    require("telescope.builtin").diagnostics({ bufnr = 0 })
end, "open diagnostic picker")
nnoremap("<Space>'", require("telescope.builtin").resume, "open last picker")
nnoremap("<Space>/", require("telescope.builtin").live_grep, "global search in workspace")
nnoremap("<Space>?", require("telescope.builtin").commands, "open command palette")

-- Remove search highlight.
nnoremap("<Leader><Space>", ":nohlsearch<CR>")

-- Better pane navigation.
nnoremap("<C-j>", "<C-w><C-j>")
nnoremap("<C-k>", "<C-w><C-k>")
nnoremap("<C-h>", "<C-w><C-h>")
nnoremap("<C-l>", "<C-w><C-l>")

-- Nvim tree.
nnoremap("<Leader>t", ":NvimTreeToggle<CR>")

-- Faster tab navigation. Leader key followed by the characters under the
-- numbers on an azerty keyboard.
nnoremap("<Leader>&", "1gt")
nnoremap("<Leader>é", "2gt")
nnoremap('<Leader>"', "3gt")
nnoremap("<Leader>'", "4gt")
nnoremap("<Leader>(", "5gt")
nnoremap("<Leader>§", "6gt")
nnoremap("<Leader>è", "7gt")
nnoremap("<Leader>!", "8gt")
nnoremap("<Leader>ç", "9gt")

-- Center the screen after navigating to the next and previous search results.
nnoremap("n", "nzz")
nnoremap("N", "Nzz")

-- Copy current file and line number to clipboard.
--
-- Sources:
-- https://www.nesono.com/node/448
-- https://stackoverflow.com/questions/4525261/getting-relative-paths-in-vim
nnoremap("<Leader>yy", ":let @+=expand('%:~:.').':'.line('.')<CR>")
