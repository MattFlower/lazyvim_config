return {
  {
    "MattFlower/commit-view.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- optional
    },
    cmd = { "CommitView", "CommitViewClose" },
    keys = {
      { "<leader>gc", "<cmd>CommitView<cr>", desc = "Open commit view" },
    },
    opts = {},
  },
}
