require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {
        "phpactor",
        "volar",
        "tsserver",
        "tailwindcss",
        "cssls",
        "eslint",
    },
})
require("mason-null-ls").setup({
    ensure_installed = {
        "stylua",
        "jq",
    },
})

local Remap = require("joren.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

vim.diagnostic.config({
    virtual_text = false,
})

local on_attach = function(client, bufnr)
    nnoremap("K", function()
        vim.lsp.buf.hover()
    end)
    nnoremap("gd", vim.lsp.buf.definition)
    nnoremap("gi", vim.lsp.buf.implementation)
    nnoremap("gr", vim.lsp.buf.references)
    nnoremap("<Leader>rn", vim.lsp.buf.rename)
    nnoremap("<Leader>ca", vim.lsp.buf.code_action)
    nnoremap("<Leader>sd", function()
        vim.diagnostic.open_float(nil, {
            focus = false,
            border = "rounded",
        })
    end)

    require("lsp_signature").on_attach({
        hint_enable = false,
    }, bufnr)
end

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it
-- to LSP servers..
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig")["phpactor"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["volar"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["tailwindcss"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["cssls"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        -- Disable to prevent "Unknown at rule @apply" in tailwindcss projects.
        css = { validate = false },
    },
})

require("lspconfig")["tsserver"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["eslint"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
