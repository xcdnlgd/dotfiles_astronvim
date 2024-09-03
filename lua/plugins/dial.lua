---@type LazySpec
return {
  "monaqa/dial.nvim",
  config = function()
    vim.keymap.set(
      "n",
      "<C-a>",
      function() require("dial.map").manipulate("increment", "normal") end,
      { desc = "Increment" }
    )
    vim.keymap.set(
      "n",
      "<C-x>",
      function() require("dial.map").manipulate("decrement", "normal") end,
      { desc = "Decrement" }
    )
    vim.keymap.set(
      "n",
      "g<C-a>",
      function() require("dial.map").manipulate("increment", "gnormal") end,
      { desc = "Increment" }
    )
    vim.keymap.set(
      "n",
      "g<C-x>",
      function() require("dial.map").manipulate("decrement", "gnormal") end,
      { desc = "Decrement" }
    )
    vim.keymap.set(
      "v",
      "<C-a>",
      function() require("dial.map").manipulate("increment", "visual") end,
      { desc = "Increment" }
    )
    vim.keymap.set(
      "v",
      "<C-x>",
      function() require("dial.map").manipulate("decrement", "visual") end,
      { desc = "Decrement" }
    )
    vim.keymap.set(
      "v",
      "g<C-a>",
      function() require("dial.map").manipulate("increment", "gvisual") end,
      { desc = "Increment" }
    )
    vim.keymap.set(
      "v",
      "g<C-x>",
      function() require("dial.map").manipulate("decrement", "gvisual") end,
      { desc = "Decrement" }
    )

    local augend = require "dial.augend"
    require("dial.config").augends:register_group {
      -- default augends used when no group name is specified
      default = {
        augend.integer.alias.decimal, -- nonnegative decimal number (0, 1, 2, 3, ...)
        augend.integer.alias.hex, -- nonnegative hex number  (0x01, 0x1a1f, etc.)
        augend.date.alias["%Y/%m/%d"], -- date (2022/02/19, etc.)
        augend.constant.alias.alpha, -- a, b, c, etc.
        augend.constant.alias.Alpha, -- A, B, C, etc.
        augend.constant.new {
          elements = {
            "january",
            "february",
            "march",
            "april",
            "may",
            "june",
            "july",
            "august",
            "september",
            "october",
            "november",
            "december",
          },
          word = true,
          cyclic = true,
        },
        augend.constant.new {
          elements = {
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
            "Sunday",
          },
          word = true,
          cyclic = true,
        },
        augend.constant.new {
          elements = {
            "monday",
            "tuesday",
            "wednesday",
            "thursday",
            "friday",
            "saturday",
            "sunday",
          },
          word = true,
          cyclic = true,
        },
        augend.case.new {
          types = { "camelCase", "PascalCase", "snake_case", "SCREAMING_SNAKE_CASE" },
        },
      },
    }
  end,
}
