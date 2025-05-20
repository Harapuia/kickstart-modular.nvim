return {
  'Civitasv/cmake-tools.nvim',
  opts = {
    cmake_compile_commands_options = {
      target = vim.loop.cwd() .. '/build',
    },
  },
}
