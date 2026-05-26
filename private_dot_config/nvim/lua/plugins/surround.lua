vim.pack.add({ "https://github.com/echasnovski/mini.surround" })

require("mini.surround").setup({
  mappings = {
    add = "ys",
    delete = "ds",
    replace = "cs",
    find = "",
    find_left = "",
    highlight = "",
  },
})
