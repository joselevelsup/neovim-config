local keymapper = vim.api.nvim_set_keymap

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

keymapper("n", "<Leader>wj", "<C-W><C-J>", { noremap = true, silent = true })
keymapper("n", "<Leader>wk", "<C-W><C-K>", { noremap = true, silent = true })
keymapper("n", "<Leader>wl", "<C-W><C-L>", { noremap = true, silent = true })
keymapper("n", "<Leader>wh", "<C-W><C-H>", { noremap = true, silent = true })

keymapper("n", "<Leader><Leader>", ":Telescope find_files theme=get_ivy<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>pp", ":Telescope project theme=get_dropdown<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>bb", ":Telescope buffers previewer=false theme=get_ivy<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>ff", ":Explore<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>fv", ":Vexplore<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>fh", ":Hexplore<CR>", { noremap = true, silent = true })

keymapper("n", "<Tab>", ":tabnext<CR>", { noremap = true, silent = true })
keymapper("n", "<S-Tab>", ":tabprev<CR>", { noremap = true, silent = true })

keymapper("n", "<Leader>gg", ":FloatermNew --title='Lazygit' --width=0.85 --height=0.85 --autoclose=2 lazygit<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>tn", ":FloatermNew --width=0.88 --height=0.7 --autoclose=1<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>t,", ":FloatermPrev<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>t.", ":FloatermNext<CR>", { noremap = true, silent = true })
keymapper("n", "<Leader>tt", ":FloatermToggle<CR>", { noremap = true, silent = true })

keymapper('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true, silent = true })
keymapper('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true, silent = true })

