return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        never_show = {
          ".git",
          ".DS_Store",
          "__pycache__",
          "node_modules",
        },
      },
    }
  }
}
