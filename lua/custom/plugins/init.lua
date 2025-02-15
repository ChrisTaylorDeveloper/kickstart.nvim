-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
