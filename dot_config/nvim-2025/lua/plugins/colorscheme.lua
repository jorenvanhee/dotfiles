return {
  'folke/tokyonight.nvim',
  -- name = 'catppuccin',
  -- Make sure to load this before all the other start plugins.
  priority = 1000,
  opts = {
    -- integrations = {
    --   flash = false,
    -- }
  },
  init = function ()
    -- vim.cmd.colorscheme 'catppuccin-macchiato'
    vim.cmd.colorscheme 'tokyonight-storm'
  end
}
