return {
  "jose-elias-alvarez/typescript.nvim", -- add lsp plugin
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tsserver", "volar", "jsonls", "html", "cssls" },
    },
  },
}
