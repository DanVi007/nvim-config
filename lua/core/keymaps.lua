--https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/keymaps.lua
local opts = {noremap = true , silent = true}

local keymap = vim.api.nvim_set_keymap
-- remap space as leader key 
keymap("","<Space>","<Nop>" , opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- insert mode
keymap("i","jk","<ESC>",opts)
keymap("i","Jk","<ESC>",opts)

-- normal
keymap("n" , "<Leader>e", ":NvimTreeToggle<CR>",opts)

-- https://www.reddit.com/r/neovim/comments/rh0ohq/nvimcmp_temporarily_disable_autocompletion/
-- look at this: 
--https://github.com/hrsh7th/nvim-cmp/issues/429
keymap("n", "<Leader>ac",":lua require('cmp').setup {enabled = false}<CR>",opts)

-- save
keymap("n", "<Leader>w",":w<CR>",opts)
-- quit 
keymap("n", "<Leader>q",":q<CR>",opts)


keymap("n", "<C-q>","<cmd>bdelete<cr>",opts)


--tab and windows 
-- keymap("n", "˛",":bp<CR>",opts) -- for mac  
-- keymap("n", "ﬁ",":bn<CR>",opts) -- for mac
keymap("n", "<A-h>",":BufferPrevious<CR>",opts)
keymap("n", "<A-l>",":BufferNext<CR>",opts)
keymap('n', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('n', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
keymap('n', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
keymap('n', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.g.winresizer_start_key = "<Leader>m"


--terminal (toggle term )
keymap('n', '<Leader>tf', ":ToggleTerm direction=float<CR>", opts)
keymap('n', '<Leader>th', ":ToggleTerm size=10 direction=horizontal<CR>", opts)
keymap('n', '<Leader>tv', ":ToggleTerm size=40 direction=vertical<CR>", opts)

keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)


-- to escape terminal 
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

keymap("n", "J","5j",opts) -- faster movement
keymap("n", "K","5k",opts) -- faster movement 
keymap("v", "J","5j",opts) -- faster movement
keymap("v", "K","5k",opts) -- faster movement 
keymap("n", "<A-k>","<C-y>",opts) -- faster movement
keymap("n", "<A-j>","<C-e>",opts) -- faster movement
keymap("v", "<A-k>","<C-y>",opts) -- faster movement
keymap("v", "<A-j>","<C-e>",opts) -- faster movement

-- keymap("n", "√","J",opts) -- replace J -- for mac

keymap("n", "<Leader>j","J",opts) -- replace J

keymap("n", "<Leader>z",":ZenMode<CR>",opts) -- replace J
