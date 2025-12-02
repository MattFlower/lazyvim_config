-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ch", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover Info" })
vim.keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "References" })

vim.keymap.set("n", "<leader>k", function()
  local current_dir = vim.fn.getcwd()
  Snacks.terminal.toggle({ "k9s" }, {
    cwd = current_dir,
    title = "k9s",
    env = {
      TERM = "xterm-256color",
    },
  })
end, { desc = "k9s" })
