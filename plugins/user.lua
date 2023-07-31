return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "crusj/bookmarks.nvim",
    keys = {
      { "<tab><tab>", mode = { "n" } },
    },
    branch = "main",
    dependencies = { "nvim-web-devicons" },
    config = function()
      require("bookmarks").setup()
      require("telescope").load_extension "bookmarks"
    end,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },

  -- zw: very slow
  -- {
  --   "ranjithshegde/ccls.nvim",
  --   config = function() require("ccls").setup { lsp = { use_defaults = true } } end,
  --   event = "User AstroFile",
  -- },

  -- zw: work
  -- {
  --   "winston0410/range-highlight.nvim",
  --   dependencies = {
  --     "winston0410/cmd-parser.nvim",
  --     "winston0410/range-highlight.nvim",
  --   },
  --   config = function() require("range-highlight").setup {} end,
  --   event = "User AstroFile",
  -- },

  -- zw: work
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   config = function()
  --     require("indent_blankline").setup {
  --       show_current_context = true,
  --       show_current_context_start = true,
  --       show_end_of_line = true,
  --       space_char_blankline = " ",
  --     }
  --   end,
  -- },

  -- zw: work
  -- {
  --   "sindrets/diffview.nvim",
  --   event = "User AstroFile",
  -- },

  {
    "nvim-telescope/telescope-frecency.nvim",
    config = function() require("telescope").load_extension "frecency" end,
    dependencies = { "kkharji/sqlite.lua" },
    event = "User AstroFile",
  },

  {
    "Mr-LLLLL/interestingwords.nvim",
    config = function()
      require("interestingwords").setup {
        colors = { "#aeee00", "#ff0000", "#0000ff", "#b88823", "#ffa724", "#ff2c4b" },
        search_count = true,
        navigation = true,
        search_key = "<leader>m",
        cancel_search_key = "<leader>M",
        color_key = "<leader>k",
        cancel_color_key = "<leader>K",
      }
    end,
    event = "User AstroFile",
  },

  -- zw: not tested
  -- {
  --   "kevinhwang91/nvim-hlslens",
  --   config = function() require("hlslens").setup() end,
  --   event = "User AstroFile",
  -- },

  -- zw: not tested
  -- {
  --   "someone-stole-my-name/yaml-companion.nvim",
  --   requires = {
  --     { "neovim/nvim-lspconfig" },
  --     { "nvim-lua/plenary.nvim" },
  --     { "nvim-telescope/telescope.nvim" },
  --   },
  --   config = function() require("telescope").load_extension "yaml_schema" end,
  --   event = "User AstroFile",
  -- },

  -- zw: not work
  -- {
  --   "cuducos/yaml.nvim",
  --   ft = { "yaml" },
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-telescope/telescope.nvim",
  --   },
  --   event = "User AstroFile",
  -- },

  {
    "CRAG666/code_runner.nvim",
    config = true,
    event = "User AstroFile",
  },

  {
    "michaelb/sniprun",
    -- cmd = "sh ./install.sh",
    config = function()
      require("sniprun").setup {
        binary_path = "/Users/jezhang/bin/sniprun",
      }
    end,
    event = "User AstroFile",
  },
  {
    "stevearc/overseer.nvim",
    config = function() require("overseer").setup() end,
    event = "User AstroFile",
  },
}
