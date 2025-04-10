return {
  { "NTBBloodbath/doom-one.nvim" },
  {
    "olimorris/onedarkpro.nvim",
    init = function()
      require("onedarkpro").setup {
        options = {
          transparency = true,
        },
        styles = {
          types = "bold",
          methods = "italic",
          numbers = "NONE",
          strings = "NONE",
          comments = "italic",
          keywords = "italic",
          constants = "NONE",
          functions = "italic",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          conditionals = "italic",
          virtual_text = "italic",
        },
      }
    end,
  },
  { "embark-theme/vim" },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
  },
  { "projekt0n/github-nvim-theme", name = "github-theme" },
  { "macguirerintoul/night_owl_light.vim" },
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    config = function()
      -- load the colorscheme here
      require("night-owl").setup {
        bold = true,
        italics = true,
        underline = true,
        undercurl = true,
        transparent_background = true,
      }
    end,
  },
  {
    "miikanissi/modus-themes.nvim",
    init = function()
      -- Default options
      require("modus-themes").setup {
        -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
        -- `auto` will automatically set style based on background set with vim.o.background
        style = "auto",
        variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
        transparent = true, -- Transparent background (as supported by the terminal)
        dim_inactive = false, -- "non-current" windows are dimmed
        hide_inactive_statusline = false, -- Hide statuslines on inactive windows. Works with the standard **StatusLine**, **LuaLine** and **mini.statusline**
        line_nr_column_background = true, -- Distinct background colors in line number column. `false` will disable background color and fallback to Normal background
        sign_column_background = true, -- Distinct background colors in sign column. `false` will disable background color and fallback to Normal background
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = { italic = true },
          variables = { italic = true },
        },

        --- You can override specific color groups to use other groups or a hex color
        --- Function will be called with a ColorScheme table
        --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- Function will be called with a Highlights and ColorScheme table
        --- Refer to `extras/lua/modus_operandi.lua` or `extras/lua/modus_vivendi.lua` for the Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(highlights, colors) end,
      }
    end,
  },
}
