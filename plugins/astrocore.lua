-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",

  ---@type AstroCoreOpts
  opts = {
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 },
      autopairs = true,
      cmp = true,
      diagnostics = {
        virtual_text = true,
        virtual_lines = false,
      },
      highlighturl = true,
      notifications = true,
    },

    diagnostics = {
      virtual_text = true,
      underline = true,
    },

    filetypes = {
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },

    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
      },

      g = {
        -- Disable Neo-tree from taking over directory views
        neo_tree_hijack_netrw = 0,

        -- Explicitly disable legacy netrw to force dir.lua fallback
        loaded_netrw = 1,
        loaded_netrwPlugin = 1,
      },
    },

    mappings = {
      -- Insert mode
      i = {
        -- Your terminal sends Ctrl+Backspace as Ctrl+H
        ["<C-H>"] = {
          "<C-W>",
          desc = "Delete previous word",
        },

        -- Support terminals that send Ctrl+Backspace directly
        ["<C-BS>"] = {
          "<C-W>",
          desc = "Delete previous word",
        },
      },

      -- Normal mode
      n = {
        -- Navigate buffer tabs
        ["]b"] = {
          function() require("astrocore.buffer").nav(vim.v.count1) end,
          desc = "Next buffer",
        },

        ["[b"] = {
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
          desc = "Previous buffer",
        },

        -- Ctrl+Shift+K: delete current line
        ["<C-S-K>"] = {
          "dd",
          desc = "Delete current line",
        },

        -- Close buffer from tabline
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },
      },
    },
  },
}
