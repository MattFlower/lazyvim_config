return {
  {
    "dinhhuy258/vim-local-history",
    lazy = false,
    enabled = true,
    opts = {
      local_history_path = "~/.local/state/nvim/.local-history",
    },
    config = function()
      local local_history_path = os.getenv("HOME") .. "/.local/state/nvim/.local-history"
      os.execute("mkdir -p " .. local_history_path)
      vim.g.local_history_path = local_history_path
      vim.g.local_history_max_changes = 500
      vim.g.local_history_new_change_delay = 60
    end,
  },
}
