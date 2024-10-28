-- local langs = { "python", "javascript", "typescript", "go", "lua", "html", "ps1", "markdown", "sql" }

--[[
by default, its disabled to prevent lag to open neovim and new buffers.
use it by using Ctrl+] or toggle the automatic sugestions with CodeiumToggle/[CodeiumEnable|CodeiumDisable]
--]]

return {
  "Exafunction/codeium.vim",
  -- ft = langs,
  config = function()
    vim.g.codeium_enabled = false
    vim.g.codeium_manual = true

    -- ENABLE CODEIUM
    vim.keymap.set("n", "<F8>", "<cmd>CodeiumEnable<cr>", { desc = "Enable Codeium", silent = true })
    vim.keymap.set("n", "<F9>", "<cmd>CodeiumAuto<cr>", { desc = "Enable Codeium Auto", silent = true })
    vim.keymap.set("n", "<F10>", "<cmd>CodeiumManual<cr>", { desc = "Disable Codeium Auto", silent = true })

    vim.keymap.set("i", "<c-]>", function()
      return vim.fn["codeium#CycleOrComplete"]()
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<C-g>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })

    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
}
