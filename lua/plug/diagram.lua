return
{
  "3rd/diagram.nvim",
  dependencies = {
    "3rd/image.nvim",
  },


  opts = { -- you can just pass {}, defaults below
    -- events = {
    --   render_buffer = { "InsertLeave", "BufWinEnter", "TextChanged" },
    --   clear_buffer = { "BufLeave" },
    -- },
    renderer_options = {
      mermaid = {
        theme = "neutral",
        background = "white", -- nil | "transparent" | "white" | "#hex"
        scale = 2,            -- nil | 1 (default) | 2  | 3 | ...
        width = nil,          -- nil | 800 | 400 | ...
        height = nil,         -- nil | 600 | 300 | ...
      },
      plantuml = {
        charset = nil,
      },
      d2 = {
        theme_id = nil,
        dark_theme_id = nil,
        scale = nil,
        layout = nil,
        sketch = nil,
      },
      gnuplot = {
        size = nil,  -- nil | "800,600" | ...
        font = nil,  -- nil | "Arial,12" | ...
        theme = nil, -- nil | "light" | "dark" | custom theme string
      },
    }
  },
}
