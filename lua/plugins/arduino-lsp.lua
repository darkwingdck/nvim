return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      arduino_language_server = {
        cmd = {
          "arduino-language-server",
          "-clangd",
          "/usr/bin/clangd",
          "-cli",
          "/opt/homebrew/bin/arduino-cli",
          "-cli-config",
          vim.fn.expand("~/.arduinoIDE/arduino-cli.yaml"),
          "-fqbn",
          "arduino:avr:uno",
        },
        filetypes = { "arduino" },
        root_dir = require("lspconfig.util").root_pattern(".git", "*.ino"),
      },
    },
    setup = {
      arduino_language_server = function(_, opts)
        require("lspconfig").arduino_language_server.setup(opts)
        return true
      end,
    },
  },
}
