return {
  -- Core package manager (Updated to new organization)
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    keys = { { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" } },
    build = ":MasonUpdate",
    opts = {
      ui = {
        border = "rounded", -- Keeps your neon purple rounded aesthetic
      },
    },
  },
  -- LSP bridge (Updated to new organization)
  {
    "mason-org/mason-lspconfig.nvim",
    -- This ensures LazyVim's LSP setup doesn't break with the new Mason v2.x
    opts = {
      automatic_installation = true,
    },
  },
}
