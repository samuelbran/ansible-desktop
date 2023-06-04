-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true
-- vim.api.nvim_create_autocmd('VimEnter', { command = "NvimTreeFocus" })
vim.api.nvim_set_option_value("colorcolumn", "80", {})
-- vim.opt.bg = 'light'
lvim.format_on_save.enabled = true
lvim.colorscheme = "rose-pine"
lvim.transparent_window = true

lvim.builtin.nvimtree.setup.view = {
  side = 'right',
  width = 40
}

lvim.plugins = {
  { "shaunsingh/nord.nvim" },
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
