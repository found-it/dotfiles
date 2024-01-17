return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "bash",
          "c",
          "css",
          "diff",
          "dockerfile",
          "fish",
          "git_config",
          "git_rebase",
          "gitcommit",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "graphql",
          "html",
          "http",
          "java",
          "javascript",
          "json",
          "lua",
          "make",
          "markdown",
          "markdown_inline",
          "passwd",
          "python",
          "query",
          "regex",
          "ruby",
          "rust",
          "sql",
          "ssh_config",
          "terraform",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
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
  },
}

