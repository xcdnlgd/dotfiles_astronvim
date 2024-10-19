---@type LazySpec
return {
  "cappyzawa/trim.nvim",
  opts = {
    -- if you want to ignore markdown file.
    -- you can specify filetypes.
    ft_blocklist = { "TelescopePrompt", "TelescopeResults", "toggleterm", "lazy", "alpha", "neo-tree" },

    -- if you want to remove multiple blank lines
    -- patterns = {
    --   [[%s/\(\n\n\)\n\+/\1/]],   -- replace multiple blank lines with a single line
    -- },

    -- if you want to disable trim on write by default
    trim_on_write = false,
    highlight_bg = "#ea6962",

    -- highlight trailing spaces
    highlight = true,
  },
}
