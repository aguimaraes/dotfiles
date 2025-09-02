vim.api.nvim_set_keymap("n", "<Leader>fe", ":NvimTreeFocus<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>ft", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- use leader+tt to toggle terminal on and off
vim.api.nvim_set_keymap("n", "<Leader>tt", ":ToggleTerm<cr>", {silent = true, noremap = true})

