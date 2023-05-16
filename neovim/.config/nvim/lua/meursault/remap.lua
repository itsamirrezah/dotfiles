local g = vim.g
local set = vim.keymap.set

g.mapleader = ' '
g.maplocalleader = ' '

set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
set("n", "<leader>pv", vim.cmd.Ex)
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")
set("n", "Y", "yg$");
set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")
set("x", "<leader>p", "\"_dP")
set("n", "<leader>d", "\"_d")
set("v", "<leader>d", "\"_d")
set("n", "<leader>o", "o<Esc>0")
set("n", "<leader>O", "O<Esc>0")
set({ 'v', 'n' }, '<Leader>ff', vim.lsp.buf.format)
