return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,

    config = function()
      require("onedarkpro").setup {
        styles = {
          comments = "italic",
          keywords = "bold,italic",
          functions = "italic",
          conditionals = "italic",
          types = "italic",

          methods = "NONE",
          numbers = "NONE",
          strings = "NONE",
          constants = "NONE",
          operators = "NONE",
          variables = "NONE",
          parameters = "NONE",
          virtual_text = "NONE",
        },

        options = {
          cursorline = true,
          terminal_colors = true,
          transparency = false,
        },
      }
    end,
  },

  {
    "AstroNvim/astrocore",
    opts = {
      colorscheme = "onedark",
    },
  },
}
