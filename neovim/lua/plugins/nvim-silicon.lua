return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("nvim-silicon").setup({
      disable_defaults = false,

      -- Hack Nerd Font Mono
      -- FiraCode Nerd Font
      -- Monocraft Nerd Font
      font = "JetBrainsMono Nerd Font",
      theme = "Dracula",

      -- STILL TESTING
      -- background = "#41295a",
      background_image = "~/.config/nvim/assets/bg-silicon/gradient-gray.png",
      shadow_blur_radius = 16,
      shadow_offset_x = 8,
      shadow_offset_y = 8,
      shadow_color = "#111",

      to_clipboard = true,
      output = nil,
      -- output = function()
      --   return "/" .. os.date("!%Y-%m-%dT%H-%M-%S") .. "_code.png"
      -- end,
    })
  end,
}

-- Gradient Options

-- gradient-gray.png
-- gradient-royal.png
-- 80s-purple.png

-- =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

-- Theme's Options

-- Coldark-Dark
-- Dracula
-- OneHalfDark
-- TwoDark

-- 1337
-- Coldark-Cold
-- DarkNeon
-- Monokai Extended
-- Monokai Extended Origin
-- Nord
-- Solarized (dark)
-- Solarized (light)
-- Sublime Snazzy
