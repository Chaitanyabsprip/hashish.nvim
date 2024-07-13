---@diagnostic enable:spell-check
local M = {}
local m = {}
local set = vim.keymap.set

---@param noremap boolean
---@return SetModeFunc
function m.create_mapper(noremap)
	return function(mode)
		return function(key)
			return function(command)
				---@param options KeymapOpts | string
				return function(options)
					if type(options) == "string" then
						local opts = { desc = options, noremap = noremap }
						return set(mode, key, command, opts)
					end
					return function(description)
						---@type vim.keymap.set.Opts
						local opts = vim.tbl_extend("force", options, { desc = description })
						return set(mode, key, command, opts)
					end
				end
			end
		end
	end
end

function m.mode_mapper(mode, noremap)
	return function(key)
		return m.create_mapper(noremap)(mode)(key)
	end
end

M.map = m.create_mapper(false)
M.nmap = m.mode_mapper("n", false)
M.vmap = m.mode_mapper("v", false)
M.tmap = m.mode_mapper("t", false)
M.cmap = m.mode_mapper("c", false)
M.xmap = m.mode_mapper("x", false)
M.imap = m.mode_mapper("i", false)
M.omap = m.mode_mapper("o", false)
M.noremap = m.create_mapper(true)
M.nnoremap = m.mode_mapper("n", true)
M.vnoremap = m.mode_mapper("v", true)
M.tnoremap = m.mode_mapper("t", true)
M.cnoremap = m.mode_mapper("c", true)
M.xnoremap = m.mode_mapper("x", true)
M.inoremap = m.mode_mapper("i", true)
M.onoremap = m.mode_mapper("o", true)

return M
