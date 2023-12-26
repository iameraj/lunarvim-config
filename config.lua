-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- Keybingings
lvim.keys.normal_mode["<Tab>"] = ":bn<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":bp<CR>"

lvim.keys.normal_mode[";"] = ":"

lvim.keys.normal_mode["<C-D>"] = "<C-D>zz"
lvim.keys.normal_mode["<C-U>"] = "<C-U>zz"

lvim.keys.normal_mode["<leader>t"] = [[:lua require("FTerm").toggle()<CR>]]
lvim.keys.term_mode["<Space>t"] = [[<C-\><C-n>:lua require("FTerm").toggle()<CR>]]

lvim.keys.normal_mode["<leader>bg"] = "<cmd> !black . <CR><CR>"
lvim.keys.insert_mode["jj"] = "<ESC>"

require("prettier").setup({
    -- Other options...
    extra_args = { "--config", ".prettierrc" }
})
require 'FTerm'.setup({
    border     = 'single',
    dimensions = {
        height = 0.9,
        width = 0.7,
    },
})

-- Plugins
lvim.plugins = {
    { "lunarvim/colorschemes" },
    { "prettier/vim-prettier" },
    { "numToStr/FTerm.nvim" },
    { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
    { "sainnhe/gruvbox-material" },
    { "MunifTanjim/prettier.nvim" },
    { "averms/black-nvim" },
    { "ThePrimeagen/vim-be-good" },
    {
        "stevearc/dressing.nvim",
        config = function()
            require("dressing").setup({
                input = { enabled = false },
            })
        end,
    },
    {
        "nvim-neorg/neorg",
        ft = "norg",   -- lazy-load on filetype
        config = true, -- run require("neorg").setup()
    },
}

-- Gruvbox Material theme configuration
if vim.fn.has('termguicolors') then
    vim.cmd('set termguicolors')
end
vim.cmd('set background=dark')

-- LunarLine

vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1
vim.g.gruvbox_material_transparent_background = 0
vim.g.gruvbox_material_enable_bold = 1

lvim.colorscheme = "gruvbox-material"
-- lvim.colorscheme = "catppuccin"


-- Format on Save
lvim.format_on_save.enabled = true


-- Other
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cmdwinheight = 1
vim.lsp.diagnostic.update_in_instert = true
vim.opt.wrap = true
