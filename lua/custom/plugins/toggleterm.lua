-- ToggleTerm: terminal management for Neovim
-- https://github.com/akinsho/toggleterm.nvim

vim.pack.add {
  'https://github.com/akinsho/toggleterm.nvim',
}

require('toggleterm').setup {
  size = 20,
  open_mapping = [[<leader>\]],
  direction = 'horizontal',
}
