return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        transparent_background = true, -- disables setting the background color.
        show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
        term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false, -- Force no underline
        styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = { "italic" },
          functions = { "italic" },
          keywords = { "italic" },
          -- strings = {},
          -- variables = {},
          -- numbers = {},
          -- booleans = {},
          -- properties = {},
          -- types = {},
          -- operators = {},
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          bufferline = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
        },
      })
    end,
  },
}
