return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    ft = "markdown",
    opts = {
      daily_notes = {
        folder = "journal",
        date_format = "%Y-%m-%d",
      },
      legacy_commands = false, -- this will be removed in the next major release
      workspaces = {
        {
          name = "Brain",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Brain",
        },
      },
    },
    keys = {
      { "<leader>o", "", desc = "Obsidian", mode = "n" },
      { "<leader>oa", "<cmd>Obsidian open<cr>", desc = "Open in Obsidian...", mode = "n" },
      { "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Dailies" },
      { "<leader>on", "<cmd>Obsidian new<cr>", desc = "New note", mode = "n" },
      { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Open", mode = "n" },
      { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Search notes" },
      { "<leader>ot", "<cmd>Obsidian toc<cr>", desc = "Note TOC" },
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
