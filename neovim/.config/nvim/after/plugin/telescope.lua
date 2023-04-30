require("telescope").load_extension('harpoon')
local builtin = require('telescope.builtin')
local set = vim.keymap.set
set('n', '<C-p>', builtin.git_files, { desc = 'Search [G]it [F]iles' })
set('n', '<leader>pf', builtin.find_files, { desc = '[S]earch [F]iles' })
set('n', '<leader>pb', builtin.buffers, { desc = '[S]earch [H]elp' })
set('n', '<leader>ph', builtin.help_tags, { desc = '[S]earch [H]elp' })
set('n', '<leader>pw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
set('n', '<leader>E', function () vim.cmd('Telescope harpoon marks') end)

