-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons' },

  -- {
  --   'ggandor/leap.nvim',
  --   config = function()
  --     require('leap').set_default_mappings()
  --   end,
  -- },

  -- For TS & Latex, tree-sitter CLI might need to be available globally on the system.
  -- See https://christaylordeveloper.co.uk/vim/neovim/treesitter/
  -- Then try :TSInstall latex
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- vim.g:vimtex_view_method = 'zathura'
      -- vim.g.vimtex_view_general_viewer = 'okular'
      -- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    end,
  },

  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },

  { 'tpope/vim-sleuth' },

  { 'lambdalisue/vim-suda' },

  { 'pocco81/auto-save.nvim', opts = {} },

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
