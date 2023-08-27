local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>tt', builtin.find_files, {})
vim.keymap.set('n', '<C-t>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ts', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
