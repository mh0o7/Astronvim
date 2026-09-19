return {
  "AstroNvim/astrocommunity",

  -- Rust
  { import = "astrocommunity.pack.rust" },

  -- Python backend
  { import = "astrocommunity.pack.python" },

  -- JavaScript / TypeScript frontend
  { import = "astrocommunity.pack.typescript" },

  -- HTML, CSS, and web tooling
  { import = "astrocommunity.pack.html-css" },

  -- JSON, useful for package.json and configuration files
  { import = "astrocommunity.pack.json" },

  -- Tailwind CSS
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.ai.avante-nvim" },
}
