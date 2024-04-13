return {
	"mfussenegger/nvim-dap",
	config = function()
		local dap = require("dap")
		local mason_registry = require("mason-registry")

		local codelldb = mason_registry.get_package("codelldb")
		local extension_path = codelldb:get_install_path() .. "\\extension"
		local codelldb_path = extension_path .. "\\adapter\\codelldb.exe"

		dap.adapters.codelldb = {
			type = "server",
			host = "127.0.0.1",
			port = 13000, -- 💀 Use the port printed out or specified with `--port`
			executable = {
				-- CHANGE THIS to your path!
				command = codelldb_path,
				args = { "--port", "13000" },

				-- On windows you may have to uncomment this:
				detached = false,
			},
		}
	end,
}
