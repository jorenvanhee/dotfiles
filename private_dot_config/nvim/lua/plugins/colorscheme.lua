vim.pack.add({ "https://github.com/ellisonleao/gruvbox.nvim" })

require("gruvbox").setup()

vim.cmd.colorscheme("gruvbox")

-- Blend the sign column and tabline into the background.
-- Gruvbox light gives these a distinct bg by default.
vim.api.nvim_set_hl(0, "SignColumn", { link = "Normal" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })

-- Pale, GitHub-style diff backgrounds. Bg-only keeps syntax colors visible.
local function diff_colors()
  if vim.o.background == "dark" then
    vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#33442a" })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#4a2a2a" })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = "#4a3526" })
    vim.api.nvim_set_hl(0, "DiffText", { bg = "#6e4a22" })
  else
    vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#d9e4bc" })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#f4d0c0" })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = "#ecddb6" })
    vim.api.nvim_set_hl(0, "DiffText", { bg = "#dabf77" })
  end
end

diff_colors()

local function theme_specific_colors()
  if vim.g.colors_name == "gruvbox" then
    vim.api.nvim_set_hl(0, "GitSignsChange", { link = "GruvboxAqua" })
  end
end

theme_specific_colors()
