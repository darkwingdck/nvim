require('diffview').setup({
    use_icons = false
})

vim.keymap.set('n', '<leader>df', vim.cmd.DiffviewOpen)
