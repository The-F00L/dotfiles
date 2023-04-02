return {
     {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require"alpha".setup(require"alpha.themes.dashboard".config)
    
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
    
    
            math.randomseed(os.time())
    
            local function pick_color()
                local colors = {"String", "Identifier", "Keyword", "Number"}
                return colors[math.random(#colors)]
            end
    
            local function footer()
                local total_plugins = #vim.tbl_keys(packer_plugins)
                local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
                local version = vim.version()
                local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch
    
                return datetime .. "   " .. total_plugins .. " plugins" .. nvim_version_info
            end
    
            -- Set header
            dashboard.section.header.val = {""}
            -- Set menu
            dashboard.section.buttons.val = {
                dashboard.button("<spc>ft", "  > open current folder", "<cmd>NvimTreeToggle<cr>"),
                dashboard.button("<spc>o", "  > open file",
                                "<cmd>Telescope find_files<cr>"),
                dashboard.button("p", "  > projects", "<cmd>Telescope projects<cr>"),
                dashboard.button("l", "  > mason", "<cmd>Mason<cr>"),
                dashboard.button("h", "  > health", "<cmd>checkhealth<cr>"),
                dashboard.button("s", "  > settings", "<cmd>e $MYVIMRC | :cd %:p:h<cr>"),
                dashboard.button("q", "  > quit", "<cmd>qa!<cr>")
            }
            
            -- dashboard.section.footer.val = footer()
            -- dashboard.section.footer.opts.hl = "Constant"
    
            -- Send config to alpha
            alpha.setup(dashboard.opts)
        end
      },
    
    
     {
        "ahmedkhalf/project.nvim",
        config = function()
          require("project_nvim").setup {
            require('telescope').load_extension('projects')
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
          }
        end
      }
    
}