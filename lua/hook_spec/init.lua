local M = {}

---@class HookSpec
---@field before fun(opts: table)
---@field after fun(opts: table, lib: table)
local HookSpec = {}
HookSpec.__index = HookSpec

---@param before fun(opts: table)
---@param after fun(opts: table, lib: table)
---@return HookSpec
function HookSpec:new(before, after)
	local instance = setmetatable({}, HookSpec)
	instance.before = before
	instance.after = after
	return instance
end

return M
