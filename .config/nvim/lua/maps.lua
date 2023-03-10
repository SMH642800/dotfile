-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- undo redo in lua just like vs code
local map = function(mode, key, command)
	vim.api.nvim_set_keymap(mode, key, command, {
		noremap = true,
		silent = true,
	})
end

---------------------
-- General Keymaps
---------------------

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- delete single line without copying into register ("_: blackhole register)
keymap.set("n", "d", '"_d')
keymap.set("v", "d", '"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit<CR>")

-- split tab
keymap.set("n", "ss", ":split<Return><C-w>w") -- split window in horizontal (left-right)
keymap.set("n", "sv", ":vsplit<Return><C-w>w") -- split window in vertical (up-down)

-- undo
map("n", "<C-z>", "u", noremap_silent)
map("i", "<C-z>", "<C-o>u", noremap_silent)
map("v", "<C-z>", "<esc>u", noremap_silent)

-- redo
-- redo for normal mode is built-in
map("i", "<C-r>", "<C-o><C-r>", noremap_silent)
map("v", "<C-r>", "<esc><C-r>", noremap_silent)

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
--keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- NeoTree
map("n", "<leader>e", "<CMD>Neotree toggle<CR>")
map("n", "<leader>o", "<CMD>Neotree focus<CR>")
