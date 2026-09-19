return {
  {
    "saltytine/typestats.nvim",
    event = "InsertEnter", -- Starts tracking the moment you begin typing
    config = function()
      -- Automatically hooks into your statusline configuration
      require("typestats").setup {}
    end,
  },
}
