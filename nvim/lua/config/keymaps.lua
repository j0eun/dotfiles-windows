local mapKey = require("utils.keyMapper").mapKey

-- Neotree toggle
mapKey("<leader>e", ":Neotree toggle<CR>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") -- Left
mapKey("<C-j>", "<C-w>j") -- Down
mapKey("<C-k>", "<C-w>k") -- Up
mapKey("<C-l>", "<C-w>l") -- Right

-- clear search highlights
mapKey("<leader>h", ":nohlsearch<CR>")

-- indent
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

-- debugging
vim.keymap.set("n", "<F5>", ':lua require("dap").continue()<CR>')
vim.keymap.set("n", "<F7>", ':lua require("dap").step_into()<CR>')
vim.keymap.set("n", "<F8>", ':lua require("dap").step_over()<CR>')
vim.keymap.set("n", "<F9>", ':lua require("dap").step_out()<CR>')
vim.keymap.set("n", "<leader>b", ':lua require("dap").toggle_breakpoint()<CR>')
vim.keymap.set("n", "<leader>B", ':lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
vim.keymap.set(
	"n",
	"<leader>lp",
	':lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<CR>'
)
vim.keymap.set("n", "<leader>dr", ':lua require("dap").repl_open()<CR>')
