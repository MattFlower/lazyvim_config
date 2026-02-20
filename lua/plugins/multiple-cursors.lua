return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    keys = {
      { "<leader>C", desc = "Cursors", mode = "n" },
      { "<leader>Cj", "<cmd>MultipleCursorsJumpNextMatch<cr>", desc = "Add For Word Under Cursor" },
      { "<leader>Cl", "<cmd>MultipleCursorsLockToggle<cr>", desc = "Un/Lock Multiple Cursors" },
      { "<leader>Cw", "<cmd>MultipleCursorsAddMatches<cr>", desc = "Add For Word Under Cursor" },
      { "<leader>Cv", "<cmd>MutipleCursorsAddVisualArea<cr>", desc = "Add for Visual Area" },
      { "<C-LeftMouse>", "<cmd>MultipleCursorsMouseAddDelete<cr>", desc = "Add Multiple Cursors" },
    },
    opts = {
      custom_key_maps = {
        {
          "n",
          "<leader>C|",
          function()
            require("multiple-cursors").align()
          end,
          desc = "Align Cursors",
        },
      },
    },
  },
}
