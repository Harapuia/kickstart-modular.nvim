-- Remote SSHFS for Neovim
-- https://github.com/nosduco/remote-sshfs.nvim

vim.pack.add {
  { src = 'https://github.com/nosduco/remote-sshfs.nvim' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
}

-- Use defaults
require('remote-sshfs').setup()
