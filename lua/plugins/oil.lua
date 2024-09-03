---@type LazySpec
return {
  "stevearc/oil.nvim",
  opts = {
    columns = {
      "icon",
      {
        "size",
        highlight = "Red",
      },
      {
        "mtime",
        highlight = "green",
      },
      {
        "permissions",
        highlight = "blue",
      },
    },
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
