---@type LazySpec
return {
  "stevearc/oil.nvim",
  opts = function(_, opts)
    opts.columns = {
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
    }
    opts.win_options = {
      wrap = false,
      spell = false,
      list = false,
      conceallevel = 1,
    }
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
