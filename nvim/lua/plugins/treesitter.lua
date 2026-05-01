return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false, -- IMPORTANT (official requirement)

    opts = {
      -- languages you want installed
      ensure_installed = {
        "lua",
        "python",
        "bash",
        "json",
        "html",
        "css",
      },

      -- install automatically when opening a file
      auto_install = true,

      highlight = {
        enable = true,

        -- DON'T mix with old vim regex unless needed
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    },
  },
}
