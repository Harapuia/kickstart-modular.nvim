-- CMake Tools for Neovim
-- https://github.com/Civitasv/cmake-tools.nvim

vim.pack.add {
  { src = "https://github.com/Civitasv/cmake-tools.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
}

require("cmake-tools").setup({
  cmake_build_directory = "build",

  cmake_generate_options = {
    "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON",
  },

  cmake_build_options = {
    "--parallel",
  },

  cmake_compile_commands_options = {
    action = "soft_link",
    target = function()
      return vim.loop.cwd()
    end,
  },
})
