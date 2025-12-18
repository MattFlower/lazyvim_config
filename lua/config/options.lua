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
  -- {
  --   "mason-org/mason-lspconfig.nvim",
  --   opts = {
  --     ensure_installed = { "copilot-ls" },
  --   },
  --   dependencies = {
  --     { "mason-org/mason.nvim", opts = {} },
  --     "neovim/nvim-lspconfig",
  --   },
  -- },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "awk",
        "bash",
        "c",
        "clojure",
        "cmake",
        "comment",
        "cpp",
        "css",
        "dockerfile",
        "fish",
        "git_commit",
        "git_config",
        "git_rebase",
        "go",
        "groovy",
        "html",
        "java",
        "javadoc",
        "javascript",
        "jq",
        "json",
        "jsonnet",
        "just",
        "kotlin",
        "latex",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "nix",
        "org",
        "php",
        "plantuml",
        "printf",
        "promql",
        "proto",
        "python",
        "readline",
        "regex",
        "rtf",
        "sql",
        "ssh_config",
        "strace",
        "toml",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
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
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        jsonnet = {},
      },
    },
  },
}
