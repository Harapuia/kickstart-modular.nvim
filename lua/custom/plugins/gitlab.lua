vim.pack.add({
  { src = "https://github.com/harrisoncramer/gitlab.nvim" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/sindrets/diffview.nvim" },
  { src = "https://github.com/stevearc/dressing.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

require("gitlab").setup()

local wk = require("which-key")

wk.add({
  { "<leader>gl", group = "GitLab" },

  { "<leader>glaa", desc = "Add assignee" },
  { "<leader>glad", desc = "Delete assignee" },
  { "<leader>glla", desc = "Add label" },
  { "<leader>glld", desc = "Delete label" },
  { "<leader>glra", desc = "Add reviewer" },
  { "<leader>glrd", desc = "Delete reviewer" },
  { "<leader>glA",  desc = "Approve MR" },
  { "<leader>glR",  desc = "Revoke MR approval" },
  { "<leader>glM",  desc = "Merge MR" },
  { "<leader>glm",  desc = "Merge when pipeline succeeds" },
  { "<leader>glrr", desc = "Rebase MR" },
  { "<leader>glrs", desc = "Rebase (skip CI)" },
  { "<leader>glrf", desc = "Force rebase" },
  { "<leader>glC",  desc = "Create MR" },
  { "<leader>glc",  desc = "Choose MR for review" },
  { "<leader>glS",  desc = "Start review" },
  { "<leader>gl<CR>", desc = "Reload MR state" },
  { "<leader>gls",  desc = "Edit summary" },
  { "<leader>glu",  desc = "Copy MR URL" },
  { "<leader>glo",  desc = "Open MR in browser" },
  { "<leader>gln",  desc = "Create note" },
  { "<leader>glp",  desc = "Pipeline status" },
  { "<leader>gld",  desc = "Toggle discussions" },
  { "<leader>glD",  desc = "Toggle draft/live mode" },
  { "<leader>glP",  desc = "Publish draft comments" },
  { "<leader>gl?",  desc = "GitLab help" },
})
