return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			--explorer = {
			--	enabled = true,
			--	layout = {
			--		cycle = false,
			--	}
			--},
			picker = { 
				enabled = true,
				matchers = {
					frequency = true,
					cwd_bonus = true,
				},
				sources = {
					files = {
						hidden = true,
						ignored = true,
					},
				},
				layout = {
					-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
					-- override picker layout in keymaps function as a param below
					preset = "telescope",
					cycle = "false",
				},
				layouts = {
					select = {
						preview = false,
					},
				},
			},	
		},
		keys = {
			{ "<leader>lg", function() Snacks.lazygit() end, desc = "LazyGit" },
			{ "<leader>gl", function() Snacks.lazygit.log() end, desc = "LazyGit Logs" },
			{ "<leader>ex", function() Snacks.explorer() end, desc = "Open Snacks Explorer" },
			{ "<leader>rN", function() Snacks.rename.rename_file() end, desc = "Fast Rename Current File" },
			{ "<leader>dB", function() Snacks.bufdelete() end, desc = "Delete or Close Buffer  (Confirm)" },
			{ "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
			{ "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },

			-- find
			{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
			{ "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
			{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
			{ "<leader>fg", function() Snacks.picker.git_files() end, desc = "Find Git Files" },
			{ "<leader>fp", function() Snacks.picker.projects() end, desc = "Projects" },
			{ "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },

			-- Grep
			{ "<leader>sb", function() Snacks.picker.lines() end, desc = "Buffer Lines" },
			{ "<leader>sB", function() Snacks.picker.grep_buffers() end, desc = "Grep Open Buffers" },
			{ "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>sw", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
		}
	},

	{
		-- todo comments with snacks; configured in todo-comments.lua
		"folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		optional = true,
		keys = {
			{ "<leader>st", function() Snacks.picker.todo_comments() end, desc = "Todo" },
			{ "<leader>sT", function() Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } }) end, desc = "Todo/Fix/Fixme" },
			-- HACK
			-- WARN
			-- PERF
		},
	}
}
