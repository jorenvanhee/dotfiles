vim.pack.add({ "https://github.com/folke/flash.nvim" })

local flash = require("flash")
local map = vim.keymap.set

vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#ffffff", bg = "#ff007c", bold = true })

-- This is mainly me trying to make flash work like vim-sneak.
flash.setup({
  -- Labels should never be keys that you want to use after searching. This
  -- would cause issues, e.g. when you reach your destination and want to
  -- type `ciw`. In that case we wouldn't want another match to have the
  -- label `c`.
  --
  -- https://github.com/justinmk/vim-sneak/blob/master/doc/sneak.txt#L327C26-L327C48
  labels = ";sftunq/SFGHLTUNRMQZ?0",
  search = {
    -- Automatically navigate to first match.
    incremental = true,
  },
  label = {
    -- Don't add a label for the first match. Incremental search will bring
    -- us to the first match automatically anyways.
    current = false,
    -- Position the label on top of the first character.
    before = { 0, 0 },
    after = false,
    -- We take control manually of what uppercase characters will be used.
    uppercase = false,
  },
  highlight = {
    backdrop = false,
  },
  modes = {
    -- Stop flash from changing f, t, F, T behaviour.
    char = {
      enabled = false,
    },
  },
})

-- Force case-sensitive search to reduce the number of matches, increasing the
-- odds that the first match is the one we want (so we skip typing a label).
local function flash_jump(opts)
  local ignorecase = vim.go.ignorecase
  vim.go.ignorecase = false
  flash.jump(opts)
  vim.go.ignorecase = ignorecase
end

map("n", "s", function()
  flash_jump({ search = { forward = true, wrap = false, multi_window = false } })
end, { desc = "Flash forward" })

map("n", "S", function()
  flash_jump({ search = { forward = false, wrap = false, multi_window = false } })
end, { desc = "Flash backward" })
