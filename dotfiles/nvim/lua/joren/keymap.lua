local M = {}

local function map_fn(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, desc, opts)
        opts = vim.tbl_extend("force", outer_opts, opts or {})

        if desc then
            opts.desc = desc
        end

        vim.keymap.set(op, lhs, rhs, opts)
    end
end

local function noremap(op, lhs, rhs, opts)
    map_fn(op)(lhs, rhs, opts)
end

M.noremap = noremap
M.nnoremap = map_fn("n")
M.vnoremap = map_fn("v")
M.xnoremap = map_fn("x")
M.inoremap = map_fn("i")

return M
