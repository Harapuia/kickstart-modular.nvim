return {
  'Civitasv/cmake-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    print 'cmake-tools config loaded!'
    require('cmake-tools').setup {
      -- Force build directory
      cmake_build_directory = 'build',

      -- Generate compile_commands and symlink to project root
      cmake_generate_options = { '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON' },
      cmake_compile_commands_options = {
        action = 'soft_link', -- or "copy", "lsp", "none"
        target = vim.loop.cwd(), -- typically project root
      },
    }
  end,
}
