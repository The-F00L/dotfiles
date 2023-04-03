-- [[ Setting options ]]
-- See `:help vim.o`

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- trouble config
vim.keymap.set("n", "tt", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)



vim.keymap.set("n", "mm", "<cmd>NvimTreeToggle<cr>",
  {silent = true, noremap = true}
)



vim.keymap.set("n", "a,", "<cmd>-tabnext<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a.", "<cmd>+tabnext<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a1", "<cmd>tabnext 1<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a2", "<cmd>tabnext 2<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a3", "<cmd>tabnext 3<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a4", "<cmd>tabnext 4<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a5", "<cmd>tabnext 5<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a6", "<cmd>tabnext 6<CR>",
  {silent = true, noremap = true}
)


vim.keymap.set("n", "a7", "<cmd>tabnext 7<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a8", "<cmd>tabnext 8<CR>",
  {silent = true, noremap = true}
)

vim.keymap.set("n", "a9", "<cmd>tabnext 9<CR>",
  {silent = true, noremap = true}
)


vim.keymap.set("n", "a0", "<cmd>tabnext $<CR>",
  {silent = true, noremap = true}
)


vim.keymap.set("n", "aq", "<cmd>tabclose<CR>",
  {silent = true, noremap = true}
)


vim.keymap.set('n', 'ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', 'fg', require('telescope.builtin').git_files, {})
vim.keymap.set('n', 'hp', require('telescope.builtin').help_tags, {})

function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
      options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
  
map('n', 'gn', '<cmd>lua require("cosmic-ui").rename()<cr>')
map('n', '<leader>ga', '<cmd>lua require("cosmic-ui").code_actions()<cr>')
map('v', '<leader>ga', '<cmd>lua require("cosmic-ui").range_code_actions()<cr>')


In_action = 0
vim.keymap.set('n', '<leader>gm',function()
    if In_action == 1 then
      In_action = 0
      vim.cmd([[:autocmd! CursorMoved]])
      vim.cmd([[:call clearmatches()]])
    else
      In_action = 1
      vim.cmd([[:autocmd CursorMoved * silent! exe printf('match Search /\<%s\>/', expand('<cword>'))]])
    end
  
  end
, {})
