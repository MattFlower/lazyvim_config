return {
  -- Disable inc-rename since we're replacing it with live-rename
  { "smjonas/inc-rename.nvim", enabled = false },

  {
    "saecki/live-rename.nvim",
    event = "LspAttach",
  },

  -- Override LazyVim's default <leader>cr rename mapping
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            {
              "<leader>cr",
              function()
                require("live-rename").rename({ insert = true })
              end,
              desc = "Rename (Live)",
              has = "rename",
            },
          },
        },
      },
    },
  },
}
