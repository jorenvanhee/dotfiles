-- The Command key can't be used in vim so I mapped several cmd combinations
-- to function keys in iTerm2. This way I can for instance press <CMD+s> and
-- iTerm will forward this to <F1>.
--
-- The mappings can be set in the iTerm preferences > profiles > your vim
-- specific profile > keys > key mappings.
--
-- To add the mapping click the "+" button. Add the keyboard shortcut and
-- select "Send Escape Sequence". Then put [11~ in the escape sequence
-- field for <F1>. Here are the escape sequences for all the function keys.
--
-- F1 -> [11~
-- F2 -> [12~
-- F3 -> [13~
-- F4 -> [14~
-- F5 -> [15~
-- F6 -> [17~
-- F7 -> [18~
-- F8 -> [19~
-- F9 -> [20~
--
-- Source: http://aperiodic.net/phil/archives/Geekery/term-function-keys.html

local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local noremap = Remap.noremap

-- Save file.
--
-- <F1> -> <CMD+s>
nnoremap("<F1>", ":w<CR>")
noremap({ "i", "v" }, "<F1>", "<Esc>:w<CR>")

-- Emmet expand. For some reason this only works if I use vim script imap
-- instead of neovims vim.keymap.set.
--
-- <F2> -> <CMD+e>
vim.cmd("imap <F2> <C-Y>,")

-- Copy selection to clipboard.
--
-- <F3> -> <CMD+c>
vnoremap("<F3>", '"+y')
