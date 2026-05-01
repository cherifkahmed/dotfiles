return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
    },

    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),

                ["<C-n>"] = cmp.mapping.select_next_item(),
                ["<C-p>"] = cmp.mapping.select_prev_item(),

                ["<Tab>"] = cmp.mapping.confirm({ select = true }),

                ["<C-l>"] = cmp.mapping(function()
                    if luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    end
                end, { "i", "s" }),

                ["<C-h>"] = cmp.mapping(function()
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    end
                end, { "i", "s" }),
            }),


            sources = cmp.config.sources({
                { name = "luasnip" },
                { name = "nvim_lsp" },
            }, {
                { name = "buffer" },
                { name = "path" },
            }),
        })
    end,
}
