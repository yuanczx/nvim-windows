return {
  "neovim/nvim-lspconfig",
  enabled = true,
  opts = {
    servers = {
      texlab = {
        settings = {
          texlab = {
            build = {
              onSave = true,
              args = { "-xelatex", "-interaction=nonstopmode", "-synctex=1", "-outdir=out", "-file-line-error", "%f" },
            },
          },
        },
      },
    },
  },
}
