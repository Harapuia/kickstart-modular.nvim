-- CMake Tools for Neovim
-- https://github.com/Civitasv/cmake-tools.nvim

vim.pack.add {
  { src = 'https://github.com/Civitasv/cmake-tools.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
}

-- Configure AFTER plugins are loaded
vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  once = true,
  callback = function()
    local ok, cmake = pcall(require, 'cmake-tools')
    if not ok then
      vim.notify('cmake-tools failed to load', vim.log.levels.ERROR)
      return
    end

    cmake.setup {
      cmake_build_directory = 'build',

      cmake_generate_options = {
        '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON',
      },

      cmake_compile_commands_options = {
        action = 'soft_link',
        target = vim.loop.cwd(),
      },
    }
  end,
})
