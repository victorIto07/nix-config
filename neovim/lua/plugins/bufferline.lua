return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,

      diagnostics_indicator = function(_, _, diag)
        local icons = require("lazyvim.config").icons.diagnostics
        local ret = (diag.error and icons.Error .. diag.error .. " " or "")
          .. (diag.warning and icons.Warn .. diag.warning or "")
        return vim.trim(ret)
      end,

      show_close_icon = false,
      show_buffer_close_icons = false,
      enforce_regular_tabs = false,
      truncate_names = false,
      persist_buffer_sort = false,
      hover = {
        enabled = false,
      },
      numbers = "id",
      custom_filter = function(buf_number, _)
        return string.find(vim.fn.buffer_name(buf_number), "%.")
      end,
    },
  },
}
