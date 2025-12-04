return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    dependencies = {
      { "nvim-mini/mini.nvim", version = "*" },
      { "obsidian-nvim/calendar.nvim" },
      { "jmbuhr/otter.nvim" },
    },
    ft = "markdown",
    opts = {
      ui = {
        enable = false,
      },
      daily_notes = {
        folder = "journal",
        date_format = "%Y-%m-%d",
      },
      legacy_commands = false, -- this will be removed in the next major release
      picker = {
        name = "snacks",
      },
      workspaces = {
        {
          name = "Brain",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Brain",
        },
      },
    },
    keys = {
      { "<C-l>", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Toggle Checkbox" },
      { "<leader>o", "", desc = "Obsidian", mode = "n" },
      { "<leader>oa", "<cmd>Obsidian open<cr>", desc = "Open in Obsidian...", mode = "n" },
      { "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Dailies" },
      { "<leader>on", "<cmd>Obsidian new<cr>", desc = "New note", mode = "n" },
      { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Open", mode = "n" },
      { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Search notes" },
      { "<leader>ot", "<cmd>Obsidian toc<cr>", desc = "Note TOC" },
      { "<leader>o-", "<cmd>Obsidian yesterday<cr>", desc = "Yesterday's note" },
      { "<leader>o0", "<cmd>Obsidian today<cr>", desc = "Today's note" },
      { "<leader>o1", "<cmd>Obsidian tomorrow<cr>", desc = "Tomorrow's note" },
      {
        "<leader>ox",
        function()
          vim.ui.input({ prompt = "New note name: " }, function(input)
            if input then
              vim.cmd("Obsidian extract_note " .. input)
            end
          end)
        end,
        desc = "Extract note",
      },
    },
  },
}
