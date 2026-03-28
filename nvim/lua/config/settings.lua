local global = vim.g
local o = vim.opt

-- leader

global.mapleader = ","

-- tab expansion

o.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
o.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent.
o.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.

-- line numbers

o.number = true -- Print the line number in front of each line
o.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.

-- misc

o.autoindent = true -- Copy indent from current line when starting a new line.
o.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
o.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
o.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
o.syntax = "on"

-- searching

o.ignorecase = true
o.smartcase = true
vim.keymap.set("n", "<leader>h", ":nohl<CR>") -- remove highlighted search

-- neotree

vim.keymap.set("n", "<leader>f", ":Neotree<CR>")
vim.keymap.set("n", "<leader>s", ":Neotree reveal<CR>")

-- save, quit

vim.keymap.set("n", "<leader>q", ":q<CR>")

-- splitting

vim.keymap.set("n", "<leader>sj", ":rightbelow new<CR>")
vim.keymap.set("n", "<leader>sk", ":leftabove new<CR>")
vim.keymap.set("n", "<leader>sh", ":leftabove vnew<CR>")
vim.keymap.set("n", "<leader>sl", ":rightbelow vnew<CR>")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- equalize panes

vim.keymap.set("n", "<leader>W", "<C-w>=<CR>")

-- telescope

vim.keymap.set("n", "<leader>t", ":Telescope find_files<CR>")
-- live grep with rg args support: "search term" --iglob **/path/** or -t ruby
vim.keymap.set("n", "<leader>r", function()
  require('telescope').extensions.live_grep_args.live_grep_args()
end)

-- visual mode: grep selected text
vim.keymap.set("v", "<leader>r", function()
  -- yank selected text into register v
  vim.cmd('noau normal! "vy"')
  local selected = vim.fn.getreg('v')

  require('telescope').extensions.live_grep_args.live_grep_args({
    default_text = selected,
  })
end)

-- disable mouse
o.mouse = ""

-- split borders (using thicker characters for visibility)
vim.opt.fillchars = {
  vert = "┃",
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
}

-- Always show statusline to make horizontal splits visible
o.laststatus = 2  -- Always show statusline for each window

-- Use winbar as horizontal separator
vim.opt.winbar = "%{repeat('━',winwidth(0))}"
