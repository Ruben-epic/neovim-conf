local keymap = vim.keymap

-- Do not yank with x
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

--New tab:
keymap.set("n", "te", ":tabedit<Return>", { silent = true })
--Split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })
-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

--Buffer line
keymap.set("n", "<C-h>", ":BufferPrevious<CR>", { silent = true })
keymap.set("n", "<C-l>", ":BufferNext<CR>", { silent = true })
keymap.set("n", "<C-C>", ":BufferClose<CR>", { silent = true })

--exit
keymap.set("i", "jk", "<esc>", { silent = true })

--formatting's
keymap.set("", "<leader>f>", ":lua vim.lsp.buf.formatting()<CR>")

keymap.set("", 'df', ":DashboardNewFile<CR>",{silent = true})
