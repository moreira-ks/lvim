vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "telekasten",
  },
  callback = function()
    vim.cmd "MarkdownPreviewToggle"
  end,
})
