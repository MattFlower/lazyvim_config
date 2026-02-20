return {
  { "nvim-neotest/neotest-python" },
  { "marilari88/neotest-vitest" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/neotest-python",
      "marilari88/neotest-vitest",
    },
    optional = true,
    opts = {
      adapters = {
        ["neotest-python"] = {},
        ["neotest-vitest"] = {},
      },
    },
  },
}
