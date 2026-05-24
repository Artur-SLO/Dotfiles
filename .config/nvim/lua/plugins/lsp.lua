return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = false },
            servers = {
                clangd = {
                    cmd = {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--function-arg-placeholders",
                        "--fallback-style=llvm",
                        "--header-insertion=never",
                    },
                },
                pyright = {
                    handlers = {
                        ["$/progress"] = function() end,
                    },
                    settings = {
                        python = {
                            analysis = {
                                typeCheckingMode = "off",
                            },
                        },
                    },
                },
            },
        },
    },
    {
        "mfussenegger/nvim-lint",
        opts = {
            linters_by_ft = {
                markdown = false,
            },
        },
    },
    -- {
    --     "folke/noice.nvim",
    --     opts = {
    --         lsp = {
    --             progress = {
    --                 enabled = false,
    --             },
    --         },
    --     },
    -- },
}

