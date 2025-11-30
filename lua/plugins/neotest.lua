return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-plenary",
      "nvim-neotest/neotest-python",
    },
    optional = true,
    opts = {
      adapters = {
        ["neotest-plenary"] = {},
        ["neotest-python"] = {},
        ["neotest-gradle"] = {},
      },
    },
  },
}
