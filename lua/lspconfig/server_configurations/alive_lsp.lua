local util = require 'lspconfig.util'

local port = os.getenv 'GDScript_Port' or '6008'
local cmd = { 'nc', 'localhost', port }

return {
  default_config = {
	cmd = cmd,
	filetypes = { 'lisp' },
	root_dir = util.root_pattern('*.asd',  '.git'),
  },
  docs = {
	description = [[
https://github.com/nobody-famous/alive-lsp

Average Lisp Environment LSP
]],
	default_config = {
	  root_dir = [[root_pattern("*.asd", ".git")]],
	},
  },
}