return {
  {
    "MattFlower/agents.nvim",
    cmd = { "AgentClaude", "AgentCodex", "AgentPi", "Agents" },
    opts = {
      -- icons = { waiting = "○", exited = "✕", unknown = "?" },
      -- poll_ms = 300,

      -- codex has no launch-time hook flag, so tab status stays "unknown" for
      -- it unless this is on. Enabling it merges the status hook into
      -- $CODEX_HOME/hooks.json (append-only; existing entries preserved).
      -- codex_hooks = true,
    },
    keys = {
      { "<leader>ac", "<cmd>AgentClaude<cr>", desc = "Claude in a new tab" },
      { "<leader>ax", "<cmd>AgentCodex<cr>", desc = "Codex in a new tab" },
      { "<leader>ap", "<cmd>AgentPi<cr>", desc = "Pi in a new tab" },
      { "<leader>al", "<cmd>Agents<cr>", desc = "List live agent sessions" },

      -- Continue the most recent session. Each CLI spells this differently —
      -- claude and pi take --continue natively, codex has no top-level flag
      -- and is rewritten to `resume --last` — so the plugin normalizes it.
      { "<leader>aC", "<cmd>AgentClaude --continue<cr>", desc = "Claude, continue last session" },
      { "<leader>aX", "<cmd>AgentCodex --continue<cr>", desc = "Codex, continue last session" },
      { "<leader>aP", "<cmd>AgentPi --continue<cr>", desc = "Pi, continue last session" },

      -- Resume a specific session: opens the CLI's own picker. Pass an id
      -- instead (:AgentPi --resume <id>) to jump straight to one.
      { "<leader>ar", "<cmd>AgentClaude --resume<cr>", desc = "Claude, resume (picker)" },
      { "<leader>aR", "<cmd>AgentCodex --resume<cr>", desc = "Codex, resume (picker)" },
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>a", group = "Agents", icon = { icon = "󱚝", color = "green" } },
      },
    },
  },
}
