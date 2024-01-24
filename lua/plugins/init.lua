-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore

-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

  local logo = [[
        ....                                                   
    .x~X88888Hx.                                               
   H8X 888888888h.      u.    u.      x.    .        .u    .   
  8888:`*888888888:   x@88k u@88c.  .@88k  z88u    .d88B :@8c  
  88888:        `%8  ^"8888""8888" ~"8888 ^8888   ="8888f8888r 
. `88888          ?>   8888  8888    8888  888R     4888>'88"  
`. ?888%           X   8888  8888    8888  888R     4888> '    
  ~*??.            >   8888  8888    8888  888R     4888>      
 .x88888h.        <    8888  8888    8888 ,888B     d888L      
:"""8888888x..  .x    "*88*" 8888"  "8888Y 8888"   ^"8888*"    
`    `*888888888"       ""   'Y"     `Y"   'YP        "Y"      
        ""***""                                                
   ]]

logo = string.rep("\n", 3) .. logo .. "\n\n"

return {

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts= {
      transparent_background = true
    }
  },

  "ThePrimeagen/vim-be-good",

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = {
      config = { header = vim.split(logo, "\n") },
    },
  },

  { "folke/flash.nvim", enabled = false },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      _extmark_signs = false,
    },
  },
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = function()
      return {
        --[[add your custom lualine config here]]
      }
    end,
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "fonts/.*",
          "%.png",
          "%.jpeg",
          "%.jpg",
        },
      },
    },
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/playground",
    },
    opts = {
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = "o",
          toggle_hl_groups = "i",
          toggle_injected_languages = "t",
          toggle_anonymous_nodes = "a",
          toggle_language_display = "I",
          focus_language = "f",
          unfocus_language = "F",
          update = "R",
          goto_node = "<cr>",
          show_help = "?",
        },
      },
      ensure_installed = {
        "lua",
        "rust",
        "tsx",
        "javascript",
        "typescript",
        "vimdoc",
        "vim",
        "bash",
        "regex",
        "html",
        "css",
        "scss",
        "markdown",
        "markdown_inline",
        "query",
        "json",
        "jsdoc",
        "graphql",
        "yaml",
      },
    },
  },

  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        -- "stylelint",
        "eslint_d",
        "prettier",
        "prettierd",
      },
    },
  },
}
