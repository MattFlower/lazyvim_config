-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Ensure we have a good default JDK
vim.cmd([[ let $JAVA_HOME = "/Users/mflower/.sdkman/candidates/java/21.0.9-zulu" ]])

-- I like ZSH
vim.opt.shell = "/bin/zsh"

-- Make sure *.libsonnet files are treated as jsonnet
vim.filetype.add({
  extension = {
    libsonnet = "jsonnet",
  },
})

-- Auto save all files when switching buffers or windows
vim.cmd([[set autowriteall]])

vim.cmd([[let g:python3_host_prog = expand('~/.local/share/nvim/venv/bin/python')]])

-- Make sure the copilot lsp server is loaded
-- vim.lsp.enable("copilot_ls")
