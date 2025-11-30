return {
  "MattFlower/endpoint.nvim",
  dependencies = {
    "folke/snacks.nvim",
  },
  cmd = { "Endpoint", "EndpointRefresh" },
  keys = {
    { "<leader>P", desc = "Endpoint", mode = "n" },
    { "<leader>Pe", "<cmd>Endpoint<cr>", desc = "All Endpoints" },
    { "<leader>Pg", "<cmd>Endpoint Get<cr>", desc = "Get Endpoints" },
    { "<leader>Pp", "<cmd>Endpoint Post<cr>", desc = "Post Endpoints" },
    { "<leader>PP", "<cmd>Endpoint Put<cr>", desc = "Put Endpoints" },
    { "<leader>Pd", "<cmd>Endpoint Delete<cr>", desc = "Delete Endpoints" },
    { "<leader>Pt", "<cmd>Endpoint Patch<cr>", desc = "Patch Endpoints" },
    { "<leader>Pr", "<cmd>EndpointRefresh<cr>", desc = "Refresh Endpoints" },
  },
  config = function()
    require("endpoint").setup()
  end,
}
