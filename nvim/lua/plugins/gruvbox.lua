return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "soft", -- can be "hard", "soft" or empty string
        italic = {
          strings = false,
          comments = true,
          operators = false,
        },
      })
      -- Uncomment to set as default:
      -- vim.cmd("colorscheme gruvbox")
    end,
  },
}
