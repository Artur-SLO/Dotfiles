return {
    {
        "L3MON4D3/LuaSnip",
        config = function()
            local ls = require("luasnip")

            -- Css mudules classes
            ls.add_snippets("javascriptreact", {
                ls.parser.parse_snippet("cm", "className={styles.$1}"),
            })

            ls.add_snippets("typescriptreact", {
                ls.parser.parse_snippet("cm", "className={styles.$1}"),
            })
        end,
    },
}
