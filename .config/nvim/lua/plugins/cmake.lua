-- lua/plugins/cmake.lua
return {
  -- Make sure Mason installs the server binary
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "cmake-language-server" })
    end,
  },

  -- Enable the LSP via nvim-lspconfig (LazyVim wires this up)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        cmake = {
          -- optional settings; usually empty is fine
          -- init_options = { buildDirectory = "build" },
        },
      },
    },
  },

  -- (Optional) Treesitter grammar for CMake files
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "cmake" })
    end,
  },
}
