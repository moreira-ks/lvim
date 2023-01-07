lvim.autocommands = {
    {
        "BufWrite", -- see `:h autocmd-events`
        { -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
            pattern = { "*.md", "*.telekasten" }, -- see `:h autocmd-events`
            command = "Glow",
        }
    },
}
