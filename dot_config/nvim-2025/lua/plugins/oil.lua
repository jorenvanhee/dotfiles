return {
  'stevearc/oil.nvim',
  -- Optional dependencies.
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  keys = {
    { '-', '<cmd>Oil<cr>', mode = 'n', desc = 'Open parent directory' },
  },
  opts = {
    use_default_keymaps = false,
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<cr>"] = "actions.select",
      ["<c-v>"] = { "actions.select", opts = { vertical = true } },
      ["<c-s>"] = { "actions.select", opts = { horizontal = true } },
      ["<c-t>"] = { "actions.select", opts = { tab = true } },
      ["<c-c>"] = { "actions.close", mode = "n" },
      ["-"] = { "actions.parent", mode = "n" },
      ["H"] = { "actions.toggle_hidden", mode = "n" },
    },
  },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
