return {
  {
    "j-hui/fidget.nvim",
    tags = "v1.4.5",
    opts = {
      notification = {
        poll_rate = 10, -- How frequently to update and render notifications
        filter = vim.log.levels.INFO, -- Minimum notifications level
        history_size = 128, -- Number of removed messages to retain in history
        override_vim_notify = true, -- Automatically override vim.notify() with Fidget
        view = {
          stack_upwards = true, -- Display notification items from bottom to top
          icon_separator = " ", -- Separator between group name and icon
          group_separator = "---", -- Separator between notification groups
          -- Highlight group used for group separator
          group_separator_hl = "Comment",
          -- How to render notification messages
          render_message = function(msg, cnt)
            return cnt == 1 and msg or string.format("(%dx) %s", cnt, msg)
          end,
        },
      },
    },
  },
}
