return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    priority = 1000,
    event = "InsertEnter",
    config = function()
        require("copilot").setup({
            suggestion = {
                enabled = true,
                auto_trigger = true,
                hide_during_completion = true,
                max_suggestions = 100,
                debounce = 50,
                keymap = {
                    accept = "<M-p>",
                    accept_word = "<M-n>",
                    accept_line = "<M-g>",
                    next = "<M-]>",
                    prev = "<M-[>",
                    dismiss = "<C-]>",
                },
            },
            filetypes = {
                ["*"] = true,
            },
        })
        vim.keymap.set("n", ",e", ":Copilot toggle<CR>", { noremap = true, silent = true })
    end,
}
