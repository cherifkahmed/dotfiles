return {
  -- Mason (installer)
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {},
  },

  -- Bridge between mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "bashls",
      },

      automatic_installation = true,
    },
  },

  -- LSP config
  {
  "neovim/nvim-lspconfig",
  config = function()
    local lsp = vim.lsp

    -- Lua LSP
    lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- Python
    lsp.config("pyright", {})

    -- Bash
    lsp.config("bashls", {})

    -- Enable servers
    lsp.enable({
      "lua_ls",
      "pyright",
      "bashls",
    })
  end,
}
}
