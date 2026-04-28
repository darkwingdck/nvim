return {
  {
    "LazyVim/LazyVim",
    init = function()
      vim.filetype.add({
        extension = { ino = "arduino" },
      })
    end,
  },
}
