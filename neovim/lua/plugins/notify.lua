return {
  "rcarriga/nvim-notify",
  enabled = false,
  opts = {
    on_open = function(win)
      local config = vim.api.nvim_win_get_config(win)
      config.border = "single"
      vim.api.nvim_win_set_config(win, config)
    end,
  },
  config = function()
    require("notify").setup({
      background_colour = "NotifyBackground",
      fps = 60,
      icons = {
        DEBUG = "",
        ERROR = "",
        INFO = "",
        TRACE = "✎",
        WARN = "",
      },
      level = 2,
      minimum_width = 10,
      render = "default", -- default | minimal | simple | compact | wrapped-compact
      stages = "slide", -- fade_in_slide_out | fade | slide | static
      time_formats = {
        notification = "%T",
        notification_history = "%FT%T",
      },
      timeout = 3000,
      top_down = true,
      on_open = function(win)
        local config = vim.api.nvim_win_get_config(win)
        config.border = "single"
        vim.api.nvim_win_set_config(win, config)
      end,
    })
  end,
}
