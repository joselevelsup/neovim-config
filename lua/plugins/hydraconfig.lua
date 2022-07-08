local Hydra = require("hydra")
local smart_splits = require("smart-splits")

local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

Hydra({
	name = "Window Gestures",
	mode = "n",
	body = "<Leader>w",
	config = {
		timeout = 500,
		hint = "statusline"
	},
	heads = {
		{"h", "<C-w>h", { desc = "Strafe to the left"}},
		{"j", "<C-w>j", { desc = "Duck down"}},
		{"k", "<C-w>k", { desc = "Jump up"}},
		{"l", "<C-w>l", { desc = "Strafe to the right"}},
		{"v", "<C-w>v", { desc = "Vertical split" }},
		{"s", "<C-w>s", { desc = "Horizontal split" }},
		{"<C-h>", function() smart_splits.resize_left(2) end, { desc = "Resize to the left"}},
		{"<C-j>", function() smart_splits.resize_down(2) end, { desc = "Resize down"}},
		{"<C-k>", function() smart_splits.resize_up(2) end, { desc = "Resize up"}},
		{"<C-l>", function() smart_splits.resize_right(2) end, { desc = "Resize to the right"}},
		{"=", "<C-w>=", { desc = "Equalize the splits"}},
		{"<Esc>", nil, { exit = true, nowait = true }}
	}
})


Hydra({
	name = "Telescope Weapons",
	mode = "n",
	body = "<Leader>f",
	config = {
		hint = "statusline"
	},
	heads = {
		{"<Leader>", cmd "Telescope find_files previewer=false hidden=true theme=dropdown", { desc = "Search the chaos"}},
		{"p",  cmd "Telescope project theme=dropdown", { desc = "Find the project you seek" } },
		{"f", cmd "Telescope file_browser hidden=true", { desc = "Browse project wares"}},
		{"g", cmd "Telescope live_grep", { desc = "What you looking for?"}},
		{"<Esc>", nil, { exit = true, nowait = true }}
	}
})

Hydra({
	name = "Buffer Weapons",
	mode = "n",
	body = "<Leader>b",
	config = {
		timeout = 1000,
		hint = "statusline"
	},
	heads = {
		{"b", cmd "Telescope buffers previewer=false theme=ivy", { desc = "Lets see what Buffers we have open"}},
		{"n", cmd "bn", { desc = "Next Buffer"}},
		{"p", cmd "bp", { desc = "Previous Buffer"}},
		{"<Esc>", nil, { exit = true, nowait = true }}
	}
})
