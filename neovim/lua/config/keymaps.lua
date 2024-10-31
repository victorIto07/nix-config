-- LANGUAGE LIST FOR AUTOMATION

local hop = require("hop")

-- SEARCH CHAR
vim.keymap.set("", "<C-f>", function()
  hop.hint_char1()
end)

-- GOTO LINE
vim.keymap.set("", "<C-t>", function()
  hop.hint_lines()
end)

vim.keymap.set("n", "<C-i>", "<cmd>tabprevious<cr>")
vim.keymap.set("n", "<C-o>", "<cmd>tabnext<cr>")
