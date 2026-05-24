
return {
    {
        "hrsh7th/nvim-cmp",
        opts = function(_, opts)
            local cmp = require("cmp")

            opts.sources = cmp.config.sources({
                { name = "luasnip", priority = 1000 },
            })
        end,
    },
}
