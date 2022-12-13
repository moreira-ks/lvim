-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "java",
  "yaml",
  "typescript",
  "sql",
  "tsx",
  "javascript",
  "json",
  "jsdoc"
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "google_java_format", filetypes = { "java" } },
}
