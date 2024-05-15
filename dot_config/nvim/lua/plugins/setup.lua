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

    
  -- Custom Parameters (with defaults)
  {
      "David-Kunz/gen.nvim",
      opts = {
          model = "llama3:latest", -- The default model to use.
          host = "localhost", -- The host running the Ollama service.
          port = "11434", -- The port on which the Ollama service is listening.
          quit_map = "q", -- set keymap for close the response window
          retry_map = "<c-r>", -- set keymap to re-send the current prompt
          init = function(options) pcall(io.popen, "ollama serve > /dev/null 2>&1 &") end,
          -- Function to initialize Ollama
          command = function(options)
              local body = {model = options.model, stream = true}
              return "curl --silent --no-buffer -X POST http://" .. options.host .. ":" .. options.port .. "/api/chat -d $body"
          end,
          -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
          -- This can also be a command string.
          -- The executed command must return a JSON object with { response, context }
          -- (context property is optional).
          -- list_models = '<omitted lua function>', -- Retrieves a list of model names
          display_mode = "split", -- The display mode. Can be "float" or "split".
          show_prompt = false, -- Shows the prompt submitted to Ollama.
          show_model = false, -- Displays which model you are using at the beginning of your chat session.
          no_auto_close = false, -- Never closes the window automatically.
          debug = false -- Prints errors and the command which is run.
      }
  },
  {
    'https://gitlab.com/itaranto/plantuml.nvim',
    version = '*',
    config = function() require('plantuml').setup() end,
  },

  }, {})



require('tabline').setup({opts})
