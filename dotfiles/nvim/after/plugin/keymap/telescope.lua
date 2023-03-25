local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<Leader>ff", function()
    require("telescope.builtin").find_files()
end)

nnoremap("<Leader>fg", function()
    require("telescope.builtin").live_grep()
end)
