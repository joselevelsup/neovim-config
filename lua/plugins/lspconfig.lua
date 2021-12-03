local cmp = require'cmp'
local lspkind = require'lspkind'

require("luasnip/loaders/from_vscode").lazy_load()

local icons = {
   Text = "",
   Method = "",
   Function = "",
   Constructor = "",
   Field = "ﰠ",
   Variable = "",
   Class = "ﴯ",
   Interface = "",
   Module = "",
   Property = "ﰠ",
   Unit = "塞",
   Value = "",
   Enum = "",
   Keyword = "",
   Snippet = "",
   Color = "",
   File = "",
   Reference = "",
   Folder = "",
   EnumMember = "",
   Constant = "",
   Struct = "פּ",
   Event = "",
   Operator = "",
   TypeParameter = "",
}

cmp.setup{
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	formatting = {
    format = function(entry, vim_item)
			vim_item.kind = string.format(
				"%s %s",
				icons[vim_item.kind],
				vim_item.kind
			)

			vim_item.menu = ({
				nvim_lsp = "[LSP]",
				luasnip = "[SNIP]",
				buffer = "[BUF]",
			})[entry.source.name]

			return vim_item
		end,
  },
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm {
			 behavior = cmp.ConfirmBehavior.Replace,
			 select = true,
		},
		["<Tab>"] = function(fallback)
			 if cmp.visible() then
					cmp.select_next_item()
			 elseif require("luasnip").expand_or_jumpable() then
					vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
			 else
					fallback()
			 end
		end,
		["<S-Tab>"] = function(fallback)
			 if cmp.visible() then
					cmp.select_prev_item()
			 elseif require("luasnip").jumpable(-1) then
					vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
			 else
					fallback()
			 end
		end,
	},
	sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
  }, {
      { name = 'buffer' },
			{ name = "path" }
  })
}

local lsp_installer = require "nvim-lsp-installer"

lsp_installer.on_server_ready(function(server)
	local local_capabilities = vim.lsp.protocol.make_client_capabilities()
	local opts = {
		capabilities = require('cmp_nvim_lsp').update_capabilities(local_capabilities),
		flags = {
			debounce_text_changes = 150,
		},
		settings = {}
	}

	server:setup(opts)
	vim.cmd [[ do User LspAttachBuffers ]]
end)
-- local function setup_servers()
--   local servers = require'nvim-lsp-installer.servers'

-- 	local local_capabilities = vim.lsp.protocol.make_client_capabilities()

--   for _, server in pairs(servers) do
-- 		require'lspconfig'[server].setup{
-- 			capabilities = require('cmp_nvim_lsp').update_capabilities(local_capabilities)
-- 		}
--   end
-- end

-- setup_servers()
