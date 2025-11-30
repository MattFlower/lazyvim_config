return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      { "<leader>D", "", desc = "+Diffview", mode = "n" },
      { "<leader>Do", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
      {
        "<leader>DO",
        function()
          vim.ui.input({ prompt = "DiffviewOpen args: " }, function(input)
            if input then
              vim.cmd("DiffviewOpen " .. input)
            end
          end)
        end,
        desc = "Diffview Open (with args)",
      },
      { "<leader>Df", "<cmd>DiffviewFileHistory<cr>", desc = "File History" },
      {
        "<leader>DF",
        function()
          vim.ui.input({ prompt = "DiffviewFileHistory args: " }, function(input)
            if input then
              vim.cmd("DiffviewFileHistory " .. input)
            end
          end)
        end,
        desc = "File History (with args)",
      },
      { "<leader>Dv", "<cmd>'<,'>DiffviewFileHistory<cr>", desc = "File History (selection)", mode = "v" },
      { "<leader>Dc", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
      { "<leader>Dr", "<cmd>DiffviewRefresh<cr>", desc = "Refresh" },
    },
  },
}
