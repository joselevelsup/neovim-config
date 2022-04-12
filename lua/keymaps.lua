local keymapper = vim.api.nvim_set_keymap
local neogit = require("neogit")
-- local Terminal = require("toggleterm.terminal").Terminal

-- local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

-- function _lazygit_toggle()
--   lazygit:toggle()
-- end

keymapper("n", "<Space>", "<NOP>", { noremap = true, silent = true })
keymapper("n", "<Up>", "<NOP>", { noremap = true, silent = true })
keymapper("n", "<Down>", "<NOP>", { noremap = true, silent = true })
keymapper("n", "<Left>", "<NOP>", { noremap = true, silent = true })
keymapper("n", "<Right>", "<NOP>", { noremap = true, silent = true })

vim.g.mapleader = ' '

keymapper("i", "<Up>", "<NOP>", { noremap = true, silent = true })
keymapper("i", "<Down>", "<NOP>", { noremap = true, silent = true })
keymapper("i", "<Left>", "<NOP>", { noremap = true, silent = true })
keymapper("i", "<Right>", "<NOP>", { noremap = true, silent = true })

keymapper("n", "<Leader>w", "<C-W>", { noremap = true, silent = true })

keymapper("n", "<Leader><Leader>", ":Telescope find_files previewer=false hidden=true theme=dropdown<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>pp", ":Telescope project theme=dropdown<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>bb", ":Telescope buffers previewer=false theme=ivy<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>bn", ":bn<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>bp", ":bp<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>ff", ":Telescope file_browser hidden=true<CR>", { noremap = true, silent = true })

keymapper("n", "<Tab>", "gt", { noremap = true, silent = true })
keymapper("n", "<S-Tab>", "gT", { noremap = true, silent = true })

keymapper("n", "<Leader>gg", ":Neogit kind=vsplit<CR>", { noremap = true, silent = true })
-- keymapper("n", "<Leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>tt", ":ToggleTerm direction='vertical' size=75<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>th", ":ToggleTerm direction='horizontal' size=25<CR>", { noremap = true, silent = true })

keymapper('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
keymapper('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

--when using GoNeovim
keymapper("n", "<C-n>", ":GonvimWorkspaceNew<CR>", { noremap = true, silent = true })
keymapper("n", "<C-[>", ":GonvimWorkspacePrev<CR>", { noremap = true, silent = true })
keymapper("n", "<C-]>", ":GonvimWorkspaceNext<CR>", { noremap = true, silent = true })
