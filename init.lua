-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[ let $JAVA_HOME = "/Users/mflower/.sdkman/candidates/java/21.0.9-zulu" ]])
vim.opt.shell = "/bin/zsh"

vim.filetype.add({
  extension = {
    libsonnet = "jsonnet",
  },
})

vim.cmd([[set autowriteall]])
