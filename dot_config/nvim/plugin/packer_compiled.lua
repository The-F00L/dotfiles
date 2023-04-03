-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/robertjona/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/robertjona/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/robertjona/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/robertjona/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/robertjona/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nT\0\0\4\0\3\0\a5\0\0\0006\1\1\0009\1\2\1\21\3\0\0B\1\2\0028\1\1\0L\1\2\0\vrandom\tmath\1\5\0\0\vString\15Identifier\fKeyword\vNumberâ\1\0\0\t\0\14\0\0266\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\0026\2\0\0009\2\6\2B\2\1\2'\3\a\0009\4\b\2'\5\t\0009\6\n\2'\a\t\0009\b\v\2&\3\b\3\18\4\1\0'\5\f\0\18\6\0\0'\a\r\0\18\b\3\0&\4\b\4L\4\2\0\r plugins\v  ï–• \npatch\nminor\6.\nmajor\f  ï”§ v\fversion\31ï‘• %d-%m-%Y  îŽ„ %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim£\6\1\0\v\0*\1W6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0026\2\5\0009\2\6\0026\4\a\0009\4\b\4B\4\1\0A\2\0\0013\2\t\0003\3\n\0009\4\v\0019\4\f\0045\5\14\0=\5\r\0049\4\v\0019\4\15\0044\5\b\0009\6\16\1'\b\17\0'\t\18\0'\n\19\0B\6\4\2>\6\1\0059\6\16\1'\b\20\0'\t\21\0'\n\22\0B\6\4\2>\6\2\0059\6\16\1'\b\23\0'\t\24\0'\n\25\0B\6\4\2>\6\3\0059\6\16\1'\b\26\0'\t\27\0'\n\28\0B\6\4\2>\6\4\0059\6\16\1'\b\29\0'\t\30\0'\n\31\0B\6\4\2>\6\5\0059\6\16\1'\b \0'\t!\0'\n\"\0B\6\4\2>\6\6\0059\6\16\1'\b#\0'\t$\0'\n%\0B\6\4\0?\6\0\0=\5\r\0049\4\v\0019\4&\4\18\5\3\0B\5\1\2=\5\r\0049\4\v\0019\4&\0049\4'\4'\5)\0=\5(\0049\4\2\0009\6'\1B\4\2\1K\0\1\0\rConstant\ahl\topts\vfooter\17<cmd>qa!<cr>\16ï™™  > quit\6q$<cmd>e $MYVIMRC | :cd %:p:h<cr>\20î˜•  > settings\6s\25<cmd>checkhealth<cr>\18ïˆž  > health\6h\19<cmd>Mason<cr>\17î®¢  > mason\6l <cmd>Telescope projects<cr>\20î¬°  > projects\6p\"<cmd>Telescope find_files<cr>\21ïœ  > open file\v<spc>o\28<cmd>NvimTreeToggle<cr>\31î—¾  > open current folder\f<spc>ft\vbutton\fbuttons\1\2\0\0\5\bval\vheader\fsection\0\0\ttime\aos\15randomseed\tmath\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15€€À™\4\0" },
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/coc.nvim",
    url = "https://github.com/neoclide/coc.nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["github-nvim-theme"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0" },
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/github-nvim-theme",
    url = "https://github.com/projekt0n/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n‚\1\0\0\6\0\6\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\nsetup\17project_nvim\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\4\nerror\nerror\fwarning\twarn\16information\tinfo\thint\thint\1\0\5\25use_diagnostic_signs\1\16fold_closed\6>\14fold_open\6v\nicons\1\17indent_lines\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/robertjona/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n‚\1\0\0\6\0\6\1\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0006\3\0\0'\5\3\0B\3\2\0029\3\4\3'\5\5\0B\3\2\0?\3\0\0B\0\2\1K\0\1\0\rprojects\19load_extension\14telescope\nsetup\17project_nvim\frequire\3€€À™\4\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nÆ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\nsigns\1\0\4\nerror\nerror\fwarning\twarn\16information\tinfo\thint\thint\1\0\5\25use_diagnostic_signs\1\16fold_closed\6>\14fold_open\6v\nicons\1\17indent_lines\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: github-nvim-theme
time([[Config for github-nvim-theme]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17github-theme\frequire\0", "config", "github-nvim-theme")
time([[Config for github-nvim-theme]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nT\0\0\4\0\3\0\a5\0\0\0006\1\1\0009\1\2\1\21\3\0\0B\1\2\0028\1\1\0L\1\2\0\vrandom\tmath\1\5\0\0\vString\15Identifier\fKeyword\vNumberâ\1\0\0\t\0\14\0\0266\0\0\0009\0\1\0006\2\2\0B\0\2\2\21\0\0\0006\1\3\0009\1\4\1'\3\5\0B\1\2\0026\2\0\0009\2\6\2B\2\1\2'\3\a\0009\4\b\2'\5\t\0009\6\n\2'\a\t\0009\b\v\2&\3\b\3\18\4\1\0'\5\f\0\18\6\0\0'\a\r\0\18\b\3\0&\4\b\4L\4\2\0\r plugins\v  ï–• \npatch\nminor\6.\nmajor\f  ï”§ v\fversion\31ï‘• %d-%m-%Y  îŽ„ %H:%M:%S\tdate\aos\19packer_plugins\rtbl_keys\bvim£\6\1\0\v\0*\1W6\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0026\2\5\0009\2\6\0026\4\a\0009\4\b\4B\4\1\0A\2\0\0013\2\t\0003\3\n\0009\4\v\0019\4\f\0045\5\14\0=\5\r\0049\4\v\0019\4\15\0044\5\b\0009\6\16\1'\b\17\0'\t\18\0'\n\19\0B\6\4\2>\6\1\0059\6\16\1'\b\20\0'\t\21\0'\n\22\0B\6\4\2>\6\2\0059\6\16\1'\b\23\0'\t\24\0'\n\25\0B\6\4\2>\6\3\0059\6\16\1'\b\26\0'\t\27\0'\n\28\0B\6\4\2>\6\4\0059\6\16\1'\b\29\0'\t\30\0'\n\31\0B\6\4\2>\6\5\0059\6\16\1'\b \0'\t!\0'\n\"\0B\6\4\2>\6\6\0059\6\16\1'\b#\0'\t$\0'\n%\0B\6\4\0?\6\0\0=\5\r\0049\4\v\0019\4&\4\18\5\3\0B\5\1\2=\5\r\0049\4\v\0019\4&\0049\4'\4'\5)\0=\5(\0049\4\2\0009\6'\1B\4\2\1K\0\1\0\rConstant\ahl\topts\vfooter\17<cmd>qa!<cr>\16ï™™  > quit\6q$<cmd>e $MYVIMRC | :cd %:p:h<cr>\20î˜•  > settings\6s\25<cmd>checkhealth<cr>\18ïˆž  > health\6h\19<cmd>Mason<cr>\17î®¢  > mason\6l <cmd>Telescope projects<cr>\20î¬°  > projects\6p\"<cmd>Telescope find_files<cr>\21ïœ  > open file\v<spc>o\28<cmd>NvimTreeToggle<cr>\31î—¾  > open current folder\f<spc>ft\vbutton\fbuttons\1\2\0\0\5\bval\vheader\fsection\0\0\ttime\aos\15randomseed\tmath\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\15€€À™\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
