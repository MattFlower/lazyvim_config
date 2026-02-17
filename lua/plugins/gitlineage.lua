return {
  {
    "lionyxml/gitlineage.nvim",
    keymap = "<leader>gv",
    keys = {
      close = "q", -- set to nil to disable
      next_commit = "]c", -- set to nil to disable
      prev_commit = "[c", -- set to nil to disable
      yank_commit = "yc", -- set to nil to disable
      open_diff = "<CR>", -- set to nil to disable (requires diffview.nvim)
    },
    config = function()
      require("gitlineage").setup()
    end,
  },
}
