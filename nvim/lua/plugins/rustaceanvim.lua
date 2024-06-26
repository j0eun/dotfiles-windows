return {
	"mrcjkb/rustaceanvim",
	version = "^4", -- Recommended
	ft = { "rust" },
	config = function()
		local mason_registry = require("mason-registry")

		local codelldb = mason_registry.get_package("codelldb")
		local extension_path = codelldb:get_install_path() .. "\\extension"
		local codelldb_path = extension_path .. "\\adapter\\codelldb.exe"
		local liblldb_path = extension_path .. "\\lldb\\bin\\liblldb.dll"

		local cfg = require("rustaceanvim.config")
		return {
			dap = {
				adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		}
	end,
}
