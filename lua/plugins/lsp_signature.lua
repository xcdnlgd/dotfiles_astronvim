---@type LazySpec
return {
  "ray-x/lsp_signature.nvim",
  envent = "LspAttach",
  opts = {
    hint_enable = false, -- disable hints as it will crash in some terminal
    doc_lines = 0,
    handler_opts = {
      border = "none", -- double, rounded, single, shadow, none, or a table of borders
    },
  },
}
