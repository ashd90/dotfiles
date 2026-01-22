return {
  -- Add the Shades of Purple plugin
  {
    "Rigellute/shades-of-purple.vim",
    lazy = false, -- Load this at startup
    priority = 1000, -- Load this before other plugins
    config = function()
      -- Set the background to dark
      vim.opt.background = "dark"
      -- Enable the colorscheme
      vim.cmd([[colorscheme shades_of_purple]])

      -- Optional: Custom tweaks to match your neon vibe
      vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" }) -- Makes it transparent to show your Ghostty blur
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", ctermbg = "none" })
    end,
  },
}
