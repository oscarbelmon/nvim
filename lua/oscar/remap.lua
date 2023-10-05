vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Para mover bloques de líneas en modo visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remapear los ':' para que aparezca la ventana flotante de VonHeikemen.
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

-- Para insertar una línea después de la actual sin salir del modo normal.
vim.keymap.set("n", "<leader>o", 'o<Esc>0"_D')
-- Para insertar una línea antes de la actual sin salir del modo normal.
vim.keymap.set('n', '<leader>O', 'O<Esc>0"_D')
