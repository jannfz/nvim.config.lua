return {
    "voldikss/vim-floaterm",
    lazy = false,
    config = function ()
        vim.keymap.set("n", "<leader>t", ":FloatermToggle<CR>")
        vim.keymap.set("t", "<leader>t", "<C-\\><C-n>:FloatermToggle<CR>")
    end,
}
