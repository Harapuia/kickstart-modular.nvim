return {
  'nvim-java/nvim-java',
  opts = {},
  config = function()
    require('java').setup()
    require('lspconfig').jdtls.setup {}
  end,
}
