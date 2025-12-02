return {
  {
    "princejoogie/dir-telescope.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    keys = {
      { "<leader>sf", "<cmd> Telescope dir live_grep<cr>", desc = "Search in Folder" },
    },
  },
}
