local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap

require('gitsigns').setup({
    on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        -- Navigation
        nnoremap("]c", function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        nnoremap("[c", function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
        end, { expr = true })

        -- Actions
        nnoremap("<Leader>hs", ":Gitsigns stage_hunk<CR>")
        nnoremap("<Leader>hr", ":Gitsigns reset_hunk<CR>")
        nnoremap("<Leader>hS", gs.stage_buffer)
        nnoremap("<Leader>hu", gs.undo_stage_hunk)
        nnoremap("<Leader>hR", gs.reset_buffer)
        nnoremap("<Leader>hp", gs.preview_hunk)
        nnoremap("<Leader>hb", function() gs.blame_line({ full = true }) end)
        nnoremap("<Leader>hd", gs.diffthis)
    end
})
