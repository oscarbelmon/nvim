vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- Para resaltar la línea en la que se está escribiendo
vim.opt.cursorline = true

vim.g.mapleader = " "

-- Para formatear al guardar un fichero.
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
