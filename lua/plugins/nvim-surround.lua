return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup {
      keymaps = {
        normal = "ys",
        delete = "ds",
        visual = "S",
        visual_line = "S",
        change = "cs",
        change_line = "cS",
      },
    }
  end,
}
