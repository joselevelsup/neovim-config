local keymapper = vim.api.nvim_set_keymap
local Terminal = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function _lazygit_toggle()
  lazygit:toggle()
end

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

keymapper("n", "<Leader><Leader>", ":Telescope find_files hidden=true theme=get_ivy<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>pp", ":Telescope project theme=get_dropdown<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>bb", ":Telescope buffers previewer=false theme=get_ivy<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>ff", ":Explore<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>fv", ":Vexplore<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>fh", ":Hexplore<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>ft", ":Texplore<CR>", { noremap = true, silent = true })

keymapper("n", "<Tab>", ":tabnext<CR>", { noremap = true, silent = true })
keymapper("n", "<S-Tab>", ":tabprev<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>gg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>tt", ":ToggleTerm direction='vertical' size=75<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>th", ":ToggleTerm direction='horizontal' size=25<CR>", { noremap = true, silent = true })

keymapper('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
keymapper('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

keymapper("n", "<Leader>ot", "<cmd>TroubleToggle<CR>", { noremap = true, silent = true })

