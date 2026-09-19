return {
  "windwp/nvim-autopairs",
  config = function(_, opts)
    -- 1. Apply AstroNvim's defaults FIRST
    require("astronvim.plugins.configs.nvim-autopairs")(nil, opts)

    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")
    local cond = require("nvim-autopairs.conds")

    -- 2. Add custom rules HERE (ensure start_pair is never nil)
    
    -- Example: Auto-space inside brackets ( ( | ) )
    npairs.add_rules {
      Rule(" ", " ")
        :with_pair(function(opts)
          local pair = opts.line:sub(opts.col - 1, opts.col)
          return vim.tbl_contains({
            "()",
            "[]",
            "{}",
          }, pair)
        end)
        :with_move(cond.none())
        :with_cr(cond.none()),
    }

    -- Example: Jump past commas and semicolons
    for _, punct in pairs { ",", ";" } do
      npairs.add_rules {
        Rule("", punct)
          :with_move(function(opts) return opts.char == punct end)
          :with_pair(function() return false end)
          :with_del(function() return false end)
          :with_cr(function() return false end)
          :use_key(punct),
      }
    end

    -- Example: Trailing commas in Lua tables (useful for config files)
    local ts_conds = require("nvim-autopairs.ts-conds")
    npairs.add_rules {
      Rule("{", "},", "lua")
        :with_pair(ts_conds.is_ts_node({ "table_constructor" })),
      Rule("'", "',", "lua")
        :with_pair(ts_conds.is_ts_node({ "table_constructor" })),
    }
  end,
}
