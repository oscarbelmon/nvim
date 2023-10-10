--vim.keymap.set("n", "<leader>nt", "<cmd>Neotree<cr>",
--  {source = filesystem, 
--  silent = true, 
--  noremap = true
--  }
--)

vim.keymap.set('n', '<leader>nt', '<cmd>Neotree toggle<cr>',
  {source = filesystem, 
  silent = true, 
  noremap = true
  }
)
