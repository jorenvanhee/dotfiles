local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap

-- Go to normal mode.
inoremap("jf", "<Esc>")

-- Caret can't be used to go to the beginning of a line when using azerty.
-- Remap it.
nnoremap("<Space>", "^<Esc>")
xnoremap("<Space>", "^")

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
nnoremap("<Leader>\"", "3gt")
nnoremap("<Leader>'", "4gt")
nnoremap("<Leader>(", "5gt")
nnoremap("<Leader>§", "6gt")
nnoremap("<Leader>è", "7gt")
nnoremap("<Leader>!", "8gt")
nnoremap("<Leader>ç", "9gt")

-- Center the screen after navigating to the next and previous search results.
nnoremap("n", "nzz")
nnoremap("N", "Nzz")
