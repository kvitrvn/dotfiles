return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        highlight = {
          enable = true,
        },
        indent = { 
            enable = true 
        },
        ensure_installed = {
          "bash",
          "dockerfile",
          "gitignore",
          "html",
          "css",
          "javascript",
          "json",
          "lua",
          "markdown",
          "markdown_inline",
          "python",
          "rst",
          "typescript",
          "vim",
          "yaml",
          "ruby",
          "php",
          "typescript",
          "angular",
          "bash",
          "csv",
          "editorconfig",
          "gitattributes",
          "go",
          "ruby",
          "xml"
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      })
    end,
  }
