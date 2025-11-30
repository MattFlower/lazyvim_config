-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        -- { "<leader>D", group = "Diffview", icon = { icon = "", color = "white" } },
        { "<leader>P", group = "Endpoint", icon = { icon = "󰽺", color = "orange" } },
      },
    },
  },
  {
    "Saghen/blink.cmp",
    opts = {
      snippets = {
        preset = "luasnip",
      },
    },
  },
}
