return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        "rust",
        "toml",

        "javascript",
        "typescript",
        "tsx",
        "jsx",

        "html",
        "css",
        "scss",
        "json",
        "jsonc",

        "python",
        "sql",
        "bash",
        "yaml",
        "markdown",
        "markdown_inline",
      })
    end,
  },
}
