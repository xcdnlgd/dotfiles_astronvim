-- set filetype jsonc for json under .vscode folder
local function set_jsonc_filetype()
  local path = vim.fn.expand('%:p:h')
  local file_extension = vim.fn.expand('%:e')
  if path:match('/%.vscode$') and file_extension == 'json' then
    vim.bo.filetype = 'jsonc'
  end
end

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.json" },
  callback = set_jsonc_filetype,
})
