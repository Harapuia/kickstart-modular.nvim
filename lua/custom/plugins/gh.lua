return {
  'ldelossa/gh.nvim',
  dependencies = {
    {
      'ldelossa/litee.nvim',
      config = function()
        require('litee.lib').setup()
      end,
    },
  },
  config = function()
    local wk = require 'which-key'
    wk.add {
      { 'g', group = 'Git' },
      { 'gh', group = 'Github' },
      { 'ghc', group = 'Commits' },
      { 'ghcc', '<cmd>GHCloseCommit<cr>', desc = 'Close' },
      { 'ghce', '<cmd>GHExpandCommit<cr>', desc = 'Expand' },
      { 'ghco', '<cmd>GHOpenToCommit<cr>', desc = 'Open To' },
      { 'ghcp', '<cmd>GHPopOutCommit<cr>', desc = 'Pop Out' },
      { 'ghcz', '<cmd>GHCollapseCommit<cr>', desc = 'Collapse' },
      { 'ghi', group = 'Issues' },
      { 'ghip', '<cmd>GHPreviewIssue<cr>', desc = 'Preview' },
      { 'ghl', group = 'Litee' },
      { 'ghlt', '<cmd>LTPanel<cr>', desc = 'Toggle Panel' },
      { 'ghp', group = 'Pull Request' },
      { 'ghpc', '<cmd>GHClosePR<cr>', desc = 'Close' },
      { 'ghpd', '<cmd>GHPRDetails<cr>', desc = 'Details' },
      { 'ghpe', '<cmd>GHExpandPR<cr>', desc = 'Expand' },
      { 'ghpo', '<cmd>GHOpenPR<cr>', desc = 'Open' },
      { 'ghpp', '<cmd>GHPopOutPR<cr>', desc = 'PopOut' },
      { 'ghpr', '<cmd>GHRefreshPR<cr>', desc = 'Refresh' },
      { 'ghpt', '<cmd>GHOpenToPR<cr>', desc = 'Open To' },
      { 'ghpz', '<cmd>GHCollapsePR<cr>', desc = 'Collapse' },
      { 'ghr', group = 'Review' },
      { 'ghrb', '<cmd>GHStartReview<cr>', desc = 'Begin' },
      { 'ghrc', '<cmd>GHCloseReview<cr>', desc = 'Close' },
      { 'ghrd', '<cmd>GHDeleteReview<cr>', desc = 'Delete' },
      { 'ghre', '<cmd>GHExpandReview<cr>', desc = 'Expand' },
      { 'ghrs', '<cmd>GHSubmitReview<cr>', desc = 'Submit' },
      { 'ghrz', '<cmd>GHCollapseReview<cr>', desc = 'Collapse' },
      { 'ght', group = 'Threads' },
      { 'ghtc', '<cmd>GHCreateThread<cr>', desc = 'Create' },
      { 'ghtn', '<cmd>GHNextThread<cr>', desc = 'Next' },
      { 'ghtt', '<cmd>GHToggleThread<cr>', desc = 'Toggle' },
    }
    require('litee.gh').setup()
  end,
}
