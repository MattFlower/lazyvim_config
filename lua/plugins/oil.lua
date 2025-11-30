return {
  {
    "refractalize/oil-git-status.nvim",
    dependencies = {
      "stevearc/oil.nvim",
    },
    config = true,
  },
  {
    "stevearc/oil.nvim",
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
      { "<leader>fo", "<cmd>Oil<cr>", desc = "Oil (Parent Dir)" },
      {
        "<leader>fO",
        function()
          vim.ui.input({ prompt = "Oil directory: " }, function(input)
            if input then
              vim.cmd("Oil " .. input)
            end
          end)
        end,
        desc = "Oil (Any Dir)",
      },
    },
    opts = {
      win_options = {
        signcolumn = "yes:2",
      },
    },
  },
}
