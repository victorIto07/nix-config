return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  lazy = true,
  config = function()
    require("neo-tree").setup({
      window = {
        position = "right",
      },
    })

    -- start with it closed
    vim.cmd("Neotree toggle")
  end,
}
