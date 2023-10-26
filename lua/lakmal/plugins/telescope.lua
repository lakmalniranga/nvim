return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require('telescope.builtin')

		telescope.setup({})
		telescope.load_extension("fzf")

		-- keymaps
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Fuzzy find files in cwd' })
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string in cwd" })
	end
}
