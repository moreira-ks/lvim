lvim.builtin.which_key.mappings["z"] = {
  "<cmd>ZenMode<cr>", "Zen"
}
lvim.builtin.which_key.mappings["n"] = {
  name = "Notes",
  c = { "<cmd>Telekasten show_calendar<cr>", "Calendar" },
  n = { "<cmd>Telekasten new_note<cr>", "Note" },
  s = { "<cmd>Telekasten find_notes<cr>", "Search" },
  d = { "<cmd>Telekasten find_daily_notes<cr>", "Find Journal" },
  f = {"<cmd>Telekasten follow_link<cr>", "follow link"},
  j = { "<cmd>Telekasten goto_today<cr>", "Journal" },
  p = { "<cmd>Telekasten panel<cr>", "Panel" },
  t = { "<cmd>Telekasten toggle_todo<cr>", "Toggle Todo" },
  m = {"<cmd>MarkdownPreview<cr>", "Preview"},
  M = {"<cmd>MarkdownPreviewStop<cr>", "Preview stop"}
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
