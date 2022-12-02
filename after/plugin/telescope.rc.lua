local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")
local fb_actions = require "telescope".extensions.file_browser.actions



telescope.setup {
    extensions = {
        file_browser = {
            initial_mode = "normal",
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                -- your custom insert mode mappings
                -- your custom normal mode mappings
                ["n"] = {
                    -- open file in new vsplit <C-v>

                    -- tab to select the files, then go to the place you want to
                    -- move or copy and then hit the following buttons
                    -- depending on what you want to do
                    -- m is move
                    -- y is copy
                    ["N"] = fb_actions.create,
                    ["rn"] = fb_actions.rename,
                    ["up"] = fb_actions.goto_parent_dir
                },
            },
        },
    },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<C-f>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
