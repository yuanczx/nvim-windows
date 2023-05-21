local theme = require("lualine.themes.everforest")
theme.normal.c.bg = "None"
theme.normal.a.bg = "None"
theme.normal.b.bg = "None"
return {
  "nvim-lualine/lualine.nvim",
  opts = {
    theme = theme,
  },
}
