return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle", -- Allows you to manually toggle it off/on with :ASToggle
    event = { "InsertLeave", "TextChanged" }, 
    opts = {
      enabled = true,
      execution_message = {
        enabled = true,
        message = function() return "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S") end,
      },
      trigger_events = { "InsertLeave", "TextChanged" },
      -- Debounce saves by 1000ms (1 second) so it doesn't spam hard drive writes
      debounce_delay = 1000, 
    },
  }
}

