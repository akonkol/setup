local builtin = require('telescope.builtin')

-- find files start with root directory of nvim
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) 

-- git grep
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' }) 

vim.keymap.set('n', '<leader>fw', function()
	builtin.grep_string({search = vim.fn.input("Grep >") });
end)
require('telescope').load_extension('fzf')
