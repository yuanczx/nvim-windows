return {
  "williamboman/mason.nvim",
  enabled = true,
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "clangd",
    },
  },
}
