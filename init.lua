vim.g.mapleader = " "
vim.o.number = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.winborder = "rounded"

vim.o.signcolumn = "no"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.breakindent = true
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = true

vim.o.clipboard = ''
vim.o.clipboard = 'unnamedplus'

vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<ESC>',"<cmd>nohlsearch<CR>" )
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)

vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y<CR>')
vim.keymap.set({'n', 'v', 'x'}, '<leader>d', '"+d<CR>')

-- delete without yanking
vim.keymap.set("n", "d", '"_d', opts)
vim.keymap.set("v", "d", '"_d', opts)
vim.keymap.set("n", "x", '"_x', opts)
vim.keymap.set("n", "D", '"_D', opts)

-- delete with leader to yank
vim.keymap.set("n", "<leader>d", '""d')
vim.keymap.set("n", "<leader>D", '""D')
vim.keymap.set("v", "<leader>d", '""d')

vim.pack.add({
  { src = "https://github.com/ellisonleao/gruvbox.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/numToStr/Comment.nvim"},
  { src = "https://github.com/Saghen/blink.nvim"},
})

vim.lsp.enable({ "lua_ls", "python", "nix" })

vim.cmd("colorscheme gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
