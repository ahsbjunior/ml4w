-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- mudando j e k para mudar de linhas na forma visual
keymap.set({ "n", "x" }, "j", "gj", { noremap = true, silent = true })
keymap.set({ "n", "x" }, "k", "gk", { noremap = true, silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>s/", "60<C-w>|", { desc = "Make this window narrower" }) -- Make this window narrower
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Clipboard
keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste with CTRL-V in Insert Mode" }) -- Paste with CTRL-V in Insert Mode

-- New line
keymap.set("n", "<CR>", "0o<esc>", { desc = "Press enter to add new line" }) -- Pressionar ENTER pra adicionar nova linha
keymap.set("n", "<S-CR>", "O<esc>", { desc = "Press shift-enter to add new line above" }) -- Pressionar SHIFT-ENTER pra adicionar nova linha acima

-- Select all
keymap.set("n", "<C-a>", "ggVG", { desc = "CTRL-A to select all" })

-- Comentarios em python
keymap.set("v", "<leader>c#", ":'<,'>s:^:#<CR>", { desc = "Add # to comment Python code." })

-- Tree
keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
keymap.set("n", "<leader>eb", "<cmd>Neotree source=buffers position=float<CR>", { desc = "Shows buffers" }) -- Shows buffers

-- Formatador
keymap.set("n", "<leader>pj", ":%!jq .<CR>", { desc = "Format JSON" }) -- Format JSON
keymap.set("v", "<leader>pj", ":'<,'>!jq .<CR>", { desc = "Format JSON" }) -- Format JSON
