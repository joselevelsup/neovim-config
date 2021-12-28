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
	},
	sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
  }, {
      { name = 'buffer' },
			{ name = "path" }
  })
}

local function setup_diags()
	local signs = {
    { name = "DiagnosticSignError", text = "" },
    { name = "DiagnosticSignWarn", text = "" },
    { name = "DiagnosticSignHint", text = "" },
    { name = "DiagnosticSignInfo", text = "" },
  }

  for _, sign in ipairs(signs) do
    vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
  end

  local config = {
    -- disable virtual text
    virtual_text = false,
    -- show signs
    signs = {
      active = signs,
    },
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = false,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(config)

  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    border = "rounded",
  })

  vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    border = "rounded",
  })
end

setup_diags()

local lsp_installer = require "nvim-lsp-installer"

lsp_installer.on_server_ready(function(server)
	local local_capabilities = vim.lsp.protocol.make_client_capabilities()
	local opts = {
		capabilities = require('cmp_nvim_lsp').update_capabilities(local_capabilities),
		flags = {
			debounce_text_changes = 150,
		},
		settings = {},
		on_attach = function(client, bufnr)
			if client.name == "tsserver" then
				client.resolved_capabilities.document_formatting = false
			end

			local opts = { noremap = true, silent = true }

			if client.resolved_capabilities.document_highlight then
				vim.api.nvim_exec(
					[[
					augroup lsp_document_highlight
						autocmd! * <buffer>
						autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
						autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
					augroup END
				]],
					false
				)
			end

			vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", '<cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>', opts)
			vim.api.nvim_buf_set_keymap(
				bufnr,
				"n",
				"gl",
				'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })<CR>',
				opts
			)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", '<cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>', opts)
			vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
			vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
		end,
	}

	server:setup(opts)
	vim.cmd [[ do User LspAttachBuffers ]]
end)

