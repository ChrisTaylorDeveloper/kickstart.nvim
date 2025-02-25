-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- vim.g:vimtex_view_method = 'zathura'
      vim.g.vimtex_view_general_viewer = 'okular'
      vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },

  { 'tpope/vim-vinegar' },

  { 'ChrisTaylorDeveloper/semi-colon.nvim' },

  { 'ggandor/leap.nvim' },

  {
    'nanozuki/tabby.nvim',
    -- event = 'VimEnter', -- if you want lazy load
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      -- configs...
    end,
  },

  { 'numToStr/Comment.nvim', opts = {} },

  { 'lambdalisue/vim-suda' },

  { 'pocco81/auto-save.nvim', opts = {} },

  {
    dir = '~/cgt/CTD/swissarmy.nvim',
    keys = {
      {
        '<leader>n',
        function()
          require('swissarmy').open_notes()
        end,
        mode = 'n',
        desc = 'Open [n]otes.txt',
      },
      {
        '<leader>c',
        function()
          require('swissarmy').open_nvim_conf()
        end,
        mode = 'n',
        desc = 'Open Neovim [c]onfig',
      },
    },
    opts = { name = 'christopher' },
  },

  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
      require('window-picker').setup()
    end,
  },
}
