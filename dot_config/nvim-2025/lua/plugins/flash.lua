return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  -- This is mainly me trying to make flash work like vim-sneak.
  opts = {
    -- Labels should never be keys that you want to use after searching. This
    -- would cause issues, e.g. when you reach your destination and want to
    -- type `ciw`. In that case we wouldn't want another match to have the
    -- label `c`.
    --
    -- https://github.com/justinmk/vim-sneak/blob/master/doc/sneak.txt#L327C26-L327C48
    labels = ';sftunq/SFGHLTUNRMQZ?0',
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
  },
  keys = {
    {
      's',
      mode = { 'n' },
      function()
        -- Reduce the number of matches by making it case sensitive. This also
        -- increases the odds of the match we need being the first one. Which
        -- means we do not need to type the label anymore.
        local ignorecase = vim.go.ignorecase
        vim.go.ignorecase = false
        require('flash').jump({ search = { forward = true, wrap = false, multi_window = false } })
        vim.go.ignorecase = ignorecase
      end,
      desc = 'Flash'
    },
    {
      'S',
      mode = { 'n' },
      function()
        -- Reduce the number of matches by making it case sensitive. This also
        -- increases the odds of the match we need being the first one. Which
        -- means we do not need to type the label anymore.
        local ignorecase = vim.go.ignorecase
        vim.go.ignorecase = false
        require('flash').jump({ search = { forward = false, wrap = false, multi_window = false } })
        vim.go.ignorecase = ignorecase
      end,
      desc = 'Flash'
    },
  },
}
