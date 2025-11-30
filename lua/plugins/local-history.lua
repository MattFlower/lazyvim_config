return {
  "dinhhuy258/vim-local-history",
  enabled = false,
  opts = {
    local_history_path = "~/.config/nvim/.local-history",
  },
  config = function()
    require("vim-local-history").setup()
  end,
}
