-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
    -- NOTE: First, some plugins that don't require any configuration
  
    -- Git related plugins
    {require 'plugins.git-plugins'},

  
    -- Detect tabstop and shiftwidth automatically 
    -- Add Autocompletion 
    -- Add Indentation guides
    {require 'plugins.auto-pretty'},
  
    {require 'plugins.lsp'},
  
    {require 'plugins.cheat'},

  
    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {} },
  

    {require 'plugins.nav'},

    {require 'plugins.trouble'},

    {require 'plugins.icons'},


    {
      'crispgm/nvim-tabline',
      dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional
      config = true,
    },

    
    {require 'plugins.home-page'},

    {require 'plugins.themes'},


    -- Status bar
    { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
        },
      },
    },

    { "MunifTanjim/nui.nvim" },

    {
      'CosmicNvim/cosmic-ui',
      requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
      -- config = function()
      --   require('cosmic-ui').setup()
      -- end,
    },


    -- CMD line alternative
    -- {
    --   "folke/noice.nvim",
    --   config = function()
    --     require("noice").setup({
    --       -- add any options here
    --     })
    --   end,
    --   dependencies = {
    --     { "MunifTanjim/nui.nvim" },
    --     { "rcarriga/nvim-notify" },
    --   },
    -- },

    {require "plugins.debug"},
    -- {require "plugins.autoformat"}

    {
      "ray-x/go.nvim",
      dependencies = {  -- optional packages
        "ray-x/guihua.lua",
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        require("go").setup()
      end,
      event = {"CmdlineEnter"},
      ft = {"go", 'gomod'},
      build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },


  }, {})



require('tabline').setup({opts})
