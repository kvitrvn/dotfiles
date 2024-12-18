return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      git = {
        enable = true

      },
      filters = {
        git_ignored = false,
        dotfiles = false,
        custom = { "-node_modules", "^\\.git$" },
      }
    })

    -- <leader>e to open/close the explorer
    vim.keymap.set(
      "n",
      "<leader>e",
      "<cmd>NvimTreeFindFileToggle<CR>",
      { desc = "open/close the explorer" }
    )
  end,
}
