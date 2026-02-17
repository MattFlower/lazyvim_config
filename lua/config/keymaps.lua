-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ch", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover Info" })
vim.keymap.set("n", "<leader>cR", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "References" })
vim.keymap.set("n", "<leader>cL", "<cmd>LspRestart<cr>", { desc = "Lsp Restart" })

vim.keymap.set("n", "<leader>z", "", { desc = "Apps" })
vim.keymap.set("n", "<leader>zk", function()
  local current_dir = vim.fn.getcwd()
  Snacks.terminal.toggle({ "k9s" }, {
    cwd = current_dir,
    title = "k9s",
    env = {
      TERM = "xterm-256color",
    },
  })
end, { desc = "k9s" })

vim.keymap.set("n", "<leader>zs", function()
  local current_dir = vim.fn.getcwd()
  Snacks.terminal.toggle({ "spotify_player" }, {
    title = "Spotify",
    keys = {
      h = "hide",
    },
    env = {
      TERM = "xterm-256color",
    },
  })
end, { desc = "Spotify" })

vim.keymap.set("n", "<leader>zd", function()
  Snacks.terminal.toggle({ "lazydocker" }, {
    title = "Docker",
    keys = {
      h = "hide",
    },
  })
end, { desc = "LazyDocker" })

vim.keymap.set("n", "<leader>zm", function()
  Snacks.terminal.toggle({ "vi-mongo" }, {
    title = "vi-mongo",
  })
end, { desc = "Mongo (vi-mongo)" })
