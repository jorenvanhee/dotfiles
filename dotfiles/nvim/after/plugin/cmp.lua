local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
    -- Completion sources ordered by priority.
    sources = {
        { name = "nvim_lsp" },
        {
            name = "buffer",
            option = {
                get_bufnrs = vim.api.nvim_list_bufs,
            },
        },
    },
    mapping = cmp.mapping.preset.insert({
        -- Confirm could do additional text edits that it gets from the LSP.
        ["<C-f>"] = cmp.mapping.confirm({ select = true }),
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),
    }),
    formatting = {
        format = lspkind.cmp_format({
            mode = "text",
            menu = {
                buffer = "[buf]",
            },
        }),
    },
    experimental = {
        ghost_text = true,
        native_menu = false,
    },
    -- To be used with native_menu = false.
    window = {
        completion = {
            border = "rounded",
        },
        documentation = {
            border = "rounded",
        },
    },
})
