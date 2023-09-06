-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
vim.api.nvim_set_option_value("colorcolumn", "80", {})
lvim.format_on_save.enabled = true
-- lvim.transparent_window = true
vim.keymap.set("x", "<leader>p", "\"_dP")

lvim.builtin.nvimtree.setup.view = {
  side = 'right',
  width = 36
}

lvim.plugins = {
  {
    "AlexvZyl/nordic.nvim",
    config = function()
      require("nordic").setup {
        transparent_bg = true,
        override = {
          TelescopePromptBorder = { bg = '#1d2129', fg = '#191c24' },
          TelescopePromptNormal = { bg = '#1d2129' },
          NvimTreeWinSeparator = { fg = '#242933', bg = '#191c24' },
          NvimTreeGitDirty = { fg = '#D08770' },
          NvimTreeGitNew = { fg = '#A3BE8C' },
          NvimTreeGitDeleted = { fg = '#BF616A' },
          NvimTreeGitStaged = { fg = '#5E81AC' },
          Visual = { bg = '#2E3440' },
          WinSeparator = { fg = '#242933', bg = '#191c24' }
        },
      }
    end,
  },
  { "gbprod/nord.nvim" },
  { "kvrohit/rasmus.nvim" },
  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },
  {
    "Fymyte/rasi.vim",
    ft = 'rasi',
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "rose-pine/neovim",
    config = function()
      require 'rose-pine'.setup({
        disable_italics = true
      })
    end
  },
  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require 'colorizer'.setup()
    end
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require 'neoscroll'.setup()
    end
  }
}

local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "80" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}

lvim.builtin.alpha.dashboard.section.header.val = {
  [[                                        ]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠒⠖⢶⣶⣿⣿⣿⣿⣿⣷⣶⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⣿⣿⣿⡿⣿⣿⣿⣿⣿⡾⣶⣄⣀⣰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣶⣿⣥⠞⠃⠁⠀⠉⠙⢛⠙⢿⡎⣿⣾⣿⣷⣶⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢁⠈⢁⠀⡀⠀⠀⠀⠀⠀⠀⠘⢿⣽⣿⠿⠿⡾⣎⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠈⣉⡉⠁⣙⡉⢢⢠⡀⠀⠀⠀⠀⠙⣿⣿⣖⣽⡿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⡝⠀⡀⠰⢀⠀⠀⠙⢶⣤⣴⣤⡀⣿⣽⣿⣿⡟⣻⢃⠀⢀⣤⣤⣄⣀⠀⠀⠀]],
  [[⠀⠀⠀⠀⣀⣀⣀⡀⠀⢠⣯⡠⠄⣠⢴⣨⠀⠀⠀⠀⠙⣿⣿⣿⡽⣻⣻⡹⣿⣿⡟⠤⢽⣿⣿⣿⣿⣿⣦⡤]],
  [[⠀⡠⢂⢽⣋⣿⣿⣻⣿⡿⣴⣽⣷⣾⣧⣷⣂⢄⠀⠀⠀⠀⠙⠷⣼⣽⣼⣽⣯⣿⣧⣾⣿⣿⣿⣿⣿⠿⠋⠀]],
  [[⠘⠃⠐⠺⠻⢻⣿⣿⠿⠳⢩⢻⢽⢟⡽⣻⠟⡛⣄⡄⠀⠀⠀⠀⣿⣾⣿⣿⣿⣟⠆⠀⠁⠉⠛⠉⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠉⠀⠋⠁⠀⠸⣿⡿⠛⣲⣻⢁⠀⠙⠀⠹⠑⢀⠀⠀⢻⣿⣿⣿⣏⡝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡟⣼⣿⡞⣼⡀⠀⠀⠀⠀⠈⠁⠳⡐⢿⣿⣿⣟⣠⠤⢄⡀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⣶⣿⠟⢻⣅⣿⠖⢀⠀⠀⠀⠀⠀⠀⠉⠛⠉⣈⣉⠢⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠩⠿⠼⣮⣽⣷⣷⣠⣄⣀⡀⠀⠀⡀⣴⣾⣳⠖⠒⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠉⠛⢟⣥⡮⣿⢿⣿⠋⢳⣯⣏⡣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠘⠶⢖⡴⣖⠛⠉⠤⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
  [[                                        ]],
}

-- do not edit beyond this line
lvim.colorscheme = "nordic"
