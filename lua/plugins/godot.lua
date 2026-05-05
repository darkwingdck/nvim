return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "gdscript", "godot_resource" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Connects to Godot's built-in LSP (port 6005). Godot must be running.
        gdscript = {},
      },
    },
  },
}
