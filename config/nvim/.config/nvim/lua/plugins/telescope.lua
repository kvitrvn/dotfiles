return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      {
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
      },
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        extensions = {
          file_browser = {
            hijack_netrw = true,
          }
        },
        defaults = {
          -- Parce que c'est joli
          prompt_prefix = " ",
          selection_caret = " ",
          path_display = { "smart" },
          file_ignore_patterns = { ".git/", "node_modules" },

          mappings = {
            i = {
              ["<C-DOWN>"] = actions.move_selection_next,
              ["<C-UP>"] = actions.move_selection_previous,
            },
          },
        },
      })

      telescope.load_extension("fzf")

      -- set keymapsq
      local keymap = vim.keymap -- for conciseness

      keymap.set(
        "n",
        "<leader>ff",
        "<cmd>Telescope find_files<cr>",
        { desc = "Recherche de chaînes de caractères dans les noms de fichiers" }
      )
      keymap.set(
        "n",
        "<leader>fg",
        "<cmd>Telescope live_grep<cr>",
        { desc = "Recherche de chaînes de caractères dans le contenu des fichiers" }
      )
      keymap.set(
        "n",
        "<leader>fb",
        "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
        { desc = "Recherche de chaînes de caractères dans les noms de buffers" }
      )
      keymap.set(
        "n",
        "<leader>fx",
        "<cmd>Telescope grep_string<cr>",
        { desc = "Recherche de la chaîne de caractères sous le curseur" }
      )
    end,
}
