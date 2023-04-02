return {
    { -- Theme inspired by Atom
    'navarasu/onedark.nvim',
  },
  { 
    "catppuccin/nvim",
    name = "catppuccin"
  },
  {
    'projekt0n/github-nvim-theme', tag = 'v0.0.7',
  },
  { 
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = true,
    -- priority = 1000
},
  {
    'morhetz/gruvbox',
    config = function() 
        vim.cmd.colorscheme("gruvbox")
    end
 },
 
}
