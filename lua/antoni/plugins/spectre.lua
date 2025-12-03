return {
	"nvim-pack/nvim-spectre",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local spectre = require("spectre")
		local keymap = vim.keymap

		spectre.setup({
			mapping = {
				["toggle_line"] = {
					map = "dd",
					cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
					desc = "Toggle current item",
				},
				["enter_file"] = {
					map = "<cr>",
					cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
					desc = "Goto current file",
				},
				["send_to_qf"] = {
					map = "<leader>q",
					cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
					desc = "Send all items to quickfix",
				},
				["replace_cmd"] = {
					map = "<leader>r",
					cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
					desc = "Input replace vim command",
				},
				["show_option_menu"] = {
					map = "<leader>o",
					cmd = "<cmd>lua require('spectre').show_options()<CR>",
					desc = "Show option",
				},
				["run_replace"] = {
					map = "<leader>R",
					cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
					desc = "Replace all",
				},
				["change_view_mode"] = {
					map = "<leader>v",
					cmd = "<cmd>lua require('spectre').change_view()<CR>",
					desc = "Change result view mode",
				},
				["toggle_ignore_case"] = {
					map = "ti",
					cmd = "<cmd>lua require('spectre').toggle_ignore_case()<CR>",
					desc = "Toggle ignore case",
				},
				["toggle_ignore_hidden"] = {
					map = "th",
					cmd = "<cmd>lua require('spectre').toggle_ignore_hidden()<CR>",
					desc = "Toggle ignore hidden",
				},
			},
		})

		
		keymap.set("n", "<leader>sr", function()
			spectre.open()
		end, { desc = "Open Spectre (search & replace)" })

		keymap.set("v", "<leader>sr", function()
			local selected = vim.fn.getreg("v"):gsub("\n", "")
			spectre.open_visual({ cword = selected })
		end, { desc = "Open Spectre with visual selection" })

		keymap.set("n", "<leader>sw", function()
			spectre.open_visual({ cword = vim.fn.expand("<cword>") })
		end, { desc = "Search current word with Spectre" })

		keymap.set("v", "<leader>sw", function()
			local selected = vim.fn.getreg("v"):gsub("\n", "")
			spectre.open_visual({ cword = selected })
		end, { desc = "Search visual selection with Spectre" })
	end,
}




