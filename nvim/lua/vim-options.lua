-- =========================
-- INDENTATION (you already have these, keeping for clarity)
-- =========================
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- =========================
-- GENERAL EDITING QUALITY
-- =========================
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true   -- persistent undo (very nice)

vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true

-- =========================
-- UI / VISUALS
-- =========================
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.opt.wrap = false          -- better for code (recommended)
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"    -- avoids text shifting (important for LSP)

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- =========================
-- SPLITS & WINDOWS (important)
-- =========================
vim.opt.splitright = true
vim.opt.splitbelow = true

-- =========================
-- PERFORMANCE / CLEANUP
-- =========================
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.completeopt = { "menuone", "noselect" }


-- KEYMAPS
local map = vim.keymap.set

-- Window navigation
map("n", "<M-Left>",  "<C-w>h")
map("n", "<M-Down>",  "<C-w>j")
map("n", "<M-Up>",    "<C-w>k")
map("n", "<M-Right>", "<C-w>l")

-- Create splits
map("n", "<leader>v", ":vsplit<CR>")
map("n", "<leader>h", ":split<CR>")

-- Resize splits
map("n", "<leader><Left>",  ":vertical resize -5<CR>")
map("n", "<leader><Right>", ":vertical resize +5<CR>")
map("n", "<leader><Up>",    ":resize +5<CR>")
map("n", "<leader><Down>",  ":resize -5<CR>")

-- Clear search highlight
map("n", "<leader>c", ":nohlsearch<CR>")

