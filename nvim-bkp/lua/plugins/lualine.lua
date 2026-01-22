return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Define our Shades of Purple palette
      local colors = {
        bg = "NONE", -- Set to NONE for transparency
        purple = "#fad000", -- Using the theme's yellow for the main mode
        dark_pur = "#2d2b55",
        magenta = "#ff79c6",
        grey = "#4d4d4d",
      }

      -- Custom theme object
      local sop_theme = {
        normal = {
          a = { fg = colors.dark_pur, bg = colors.purple, gui = "bold" },
          b = { fg = colors.magenta, bg = colors.bg },
          c = { fg = colors.magenta, bg = colors.bg },
        },
        insert = {
          a = { fg = colors.dark_pur, bg = colors.magenta, gui = "bold" },
        },
        visual = {
          a = { fg = colors.dark_pur, bg = "#b362ff", gui = "bold" },
        },
        replace = {
          a = { fg = colors.dark_pur, bg = "#ff5555", gui = "bold" },
        },
        inactive = {
          a = { fg = colors.grey, bg = colors.bg },
          b = { fg = colors.grey, bg = colors.bg },
          c = { fg = colors.grey, bg = colors.bg },
        },
      }

      -- Apply the theme and customize separators for a "neon" look
      opts.options = {
        theme = sop_theme,
        globalstatus = true,
        component_separators = { left = "｜", right = "｜" },
        section_separators = { left = "", right = "" }, -- Rounded separators
      }
    end,
  },
}
