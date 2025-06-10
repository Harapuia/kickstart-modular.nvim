return {
  'kelly-lin/ranger.nvim',
  config = function()
    require('ranger-nvim').setup { replace_netrw = true }
    vim.api.nvim_set_keymap('n', '<leader>o', '', {
      noremap = true,
      desc = 'open ranger',
      callback = function()
        require('ranger-nvim').open(true)
      end,
    })
  end,
}
