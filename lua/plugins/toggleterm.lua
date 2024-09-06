---@type LazySpec
return {
  "akinsho/toggleterm.nvim",
  opts = function (_, opts)
    opts.on_open = function (_)
      vim.wo.spell = false
    end
    opts.on_close = function(_)
      vim.wo.spell = true
    end
  end
}
