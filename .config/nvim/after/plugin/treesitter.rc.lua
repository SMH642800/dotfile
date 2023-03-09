local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {
			"python",
		},
	},
	ensure_installed = {
		--"tsx",
		"toml",
		--"php",
		"json",
		"yaml",
		--"swift",
		--"css",
		--"html",
		"lua",
		"python",
		"markdown",
		"markdown_inline",
		"c",
	},
	autotag = {
		enable = true,
	},
	auto_install = true,
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
