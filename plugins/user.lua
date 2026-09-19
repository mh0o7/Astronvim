---@type LazySpec
return {
  -- Autosave
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,
      debounce_delay = 1000,

      execution_message = {
        enabled = false,
      },

      trigger_events = {
        immediate_save = {
          "BufLeave",
          "FocusLost",
        },
        defer_save = {
          "InsertLeave",
          "TextChanged",
        },
      },

      condition = function(buf)
        return vim.bo[buf].modifiable and vim.bo[buf].buftype == ""
      end,
    },
  },

  -- Discord Rich Presence
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
  },

  -- LSP signature help
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    opts = {},
  },

  -- Snacks dashboard
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
██╗  ██╗ █████╗ ██████╗ ██████╗     ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗
██║  ██║██╔══██╗██╔══██╗██╔══██╗    ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝
███████║███████║██████╔╝██║  ██║    ██║ █╗ ██║██║   ██║██████╔╝█████╔╝
██╔══██║██╔══██╗██╔══██╗██║  ██║    ██║███╗██║██║   ██║██████╔╝██╔═██╗
██║  ██║██║  ██║██║  ██║██████╔╝    ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝      ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝

                  Rabii zidni Elma

                 HARD WORK BEATS TALENT
              WHEN TALENT DOESN'T WORK HARD

              GREATEST BACKEND DEVELOPER
                       IN THE WORLD
          ]],
        },
      },
    },
  },

  -- Disable better-escape
  {
    "max397574/better-escape.nvim",
    enabled = false,
  },

  -- LuaSnip
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      local luasnip = require("luasnip")

      luasnip.filetype_extend("javascript", {
        "javascriptreact",
      })

      require("astronvim.plugins.configs.luasnip")(plugin, opts)
    end,
  },

  -- Productivity timer
  {
    "epwalsh/pomo.nvim",
    version = "*",
    cmd = {
      "TimerStart",
      "TimerRepeat",
      "TimerStop",
    },
    dependencies = {
      "rcarriga/nvim-notify",
    },
    opts = {
      update_interval = 1000,

      notifiers = {
        {
          name = "Default",
          opts = {
            sticky = true,
            title_icon = "⏳",
            text_icon = "⏱️",
          },
        },
        {
          name = "System",
        },
      },
    },
  },

  -- TODO, FIXME, NOTE, and HACK highlighting
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- Better commenting
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {},
  },
}

