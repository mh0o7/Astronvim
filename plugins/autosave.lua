return {
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = true,
      debounce_delay = 5000,
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
        return vim.bo[buf].modifiable and vim.bo[buf].buftype == "" and vim.bo[buf].filetype ~= "gitcommit"
      end,
    },
  },
}
