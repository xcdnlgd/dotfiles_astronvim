---@type LazySpec
return {
  "brenton-leighton/multiple-cursors.nvim",
  version = "*",
  opts = {
    pre_hook = function()
      require("nvim-autopairs").disable()
      require("cmp").setup { enabled = false }
    end,
    post_hook = function()
      require("nvim-autopairs").enable()
      require("cmp").setup { enabled = true }
    end,
  },
  keys = {
    {
      "<Leader>a",
      "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
      mode = { "n", "x" },
      desc = "Add cursor and jump to next cword",
    },
  },
}
