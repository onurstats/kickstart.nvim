-- Neo Tree For Basic Browsing

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  keys = {
      { "<leader>n", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
  },
  opts = {
    default_component_configs = {
      git_status = {
        symbols = {
          -- Change type
          added     = "✚",
          deleted   = "✖",
          modified  = "",
          renamed   = "󰁕",
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "󱓺",
          staged    = "",
          conflict  = "",
        }
      }
    }
  }
}
