return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- Rust
        "rust-analyzer",

        -- JavaScript / TypeScript
        "typescript-language-server",
        "eslint-lsp",

        -- HTML / CSS
        "html-lsp",
        "css-lsp",

        -- Tailwind
        "tailwindcss-language-server",

        -- Python
        "pyright",

        -- Formatters
        "prettier",
        "stylua",
        "black",

        -- Linters
        "eslint_d",
        "ruff",
      },
    },
  },
}
