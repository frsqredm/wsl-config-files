return {
  -- telescope.nvim
  require("telescope").load_extension("notify"),

  -- notify.nvim
  require("notify").setup({
    background_colour = "NotifyBackground",
    fps = 30,
    icons = {
      DEBUG = "",
      ERROR = "",
      INFO = "",
      TRACE = "",
      WARN = "",
    },
    level = 1,
    minimum_width = 50,
    max_width = 50,
    render = "minimal",
    stages = "fade",
    time_formats = {
      notification = "%T",
      notification_history = "%FT%T",
    },
    timeout = 500000,
    top_down = true,
  }),

  -- neo-tree.nvim
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
}
