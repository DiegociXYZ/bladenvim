--Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

--Find and Center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "nzzzv", opts)

--keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', opts)

--delete single character without adding to register
vim.keymap.set("n", "x", '"_x', opts)
--
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

--limpiar highlilght con esc despues de busqueda
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
	vim.keymap.set("n", "<leader>lw", "<cmd>set wrap! <CR>", opts),
})
