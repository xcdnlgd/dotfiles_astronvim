return {
  "ggandor/leap.nvim",
  config = function ()
    vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward-to)')
    vim.keymap.set('n', 'gs', '<Plug>(leap-cross-window)')
    vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward-to)')
  end
}
