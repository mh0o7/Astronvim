return {
  {
    "JohnnyJumper/neotypist.nvim",
    dependencies = { "rcarriga/nvim-notify" }, -- Optional: gives you speed achievement popups
    config = function()
      require("neotypist").setup {
        -- Your live WPM will display as virtual text at the end of the line
        enabled = true,
      }
    end,
    -- Make it load automatically on text files so it works in main.py
    event = { "BufReadPost", "BufNewFile" },
  },
}
