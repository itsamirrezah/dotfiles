local set = vim.keymap.set
local builtin = require('telescope.builtin')

set('n', '<C-p>', builtin.git_files, { desc = 'Search [G]it [F]iles' })
set('n', '<leader>pf', builtin.find_files, { desc = '[S]earch [F]iles' })
set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
