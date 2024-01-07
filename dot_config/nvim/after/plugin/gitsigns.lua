local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap

require("gitsigns").setup({
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- Navigation
        nnoremap("]c", function()
            if vim.wo.diff then
                return "]c"
            end
            vim.schedule(function()
                gs.next_hunk()
            end)
            return "<Ignore>"
        end, "Next hunk", { expr = true })

        nnoremap("[c", function()
            if vim.wo.diff then
                return "]c"
            end
            vim.schedule(function()
                gs.prev_hunk()
            end)
            return "<Ignore>"
        end, "Previous hunk", { expr = true })

        -- Actions
        nnoremap("<Leader>hs", ":Gitsigns stage_hunk<CR>", "Stage hunk")
        nnoremap("<Leader>hr", ":Gitsigns reset_hunk<CR>", "Reset hunk")
        nnoremap("<Leader>hS", gs.stage_buffer, "Stage buffer")
        nnoremap("<Leader>hu", gs.undo_stage_hunk, "Undo stage hunk")
        nnoremap("<Leader>hR", gs.reset_buffer, "Reset buffer")
        nnoremap("<Leader>hp", gs.preview_hunk, "Preview hunk")
        nnoremap("<Leader>hb", function()
            gs.blame_line({ full = true })
        end, "Blame hunk")
        nnoremap("<Leader>hd", gs.diffthis, "Diff hunk")
    end,
})
