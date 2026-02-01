return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Existing configs
      vim.lsp.config('clangd', {
        cmd = { 'clangd', "--compile-commands-dir=." },
        filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
        root_markers = { '.git', 'compile_commands.json' },
      })
      vim.lsp.config('pyright', {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_markers = { 'pyproject.toml', 'setup.py', '.git' },
      })
      
      -- Add gopls
      vim.lsp.config('gopls', {
        cmd = { 'gopls' },
        filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
        root_markers = { 'go.work', 'go.mod', '.git' },
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })
      
      -- Existing autocmds
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'c', 'cpp', 'arduino' },
        callback = function()
          vim.lsp.enable('clangd')
        end,
      })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'python',
        callback = function()
          vim.lsp.enable('pyright')
        end,
      })
      
      -- Add Go autocmd
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'go',
        callback = function()
          vim.lsp.enable('gopls')
        end,
      })
      
      -- Existing keybindings
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end,
  },
  {
    "glebzlat/arduino-nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("arduino-nvim").setup({
        arduino_cli_cmd = "arduino-cli",
        clangd_cmd = { "clangd" },
        board = "arduino:avr:nano",
        port = "/dev/cu.usbserial-0001",
      })
    end,
  },
}
