-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- Navigate between bufferline tabs
vim.keymap.set("n", "<M-,", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<M-.", ":BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Next buffer" })

-- Close current buffer
vim.keymap.set("n", "<M-c>", ":bdelete<CR>", { noremap = true, silent = true, desc = "Close buffer" })
