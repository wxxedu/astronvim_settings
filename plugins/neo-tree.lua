return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    source_selector = {
      winbar = true,
      content_layout = "center",
      tab_labels = {
        filesystem = "File",
        -- git_status = "Git",
      },
    },
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
