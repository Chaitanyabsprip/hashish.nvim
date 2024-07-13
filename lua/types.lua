
---@class KeymapOpts
---@field noremap? boolean
---@field remap? boolean
---@field desc? string
---@field silent? boolean
---@field expr? boolean
---@field nowait? boolean
---@field buffer? integer

---@alias SetModeFunc fun(mode: string | string[]): SetKeyFunc

---@alias SetKeyFunc fun(key: string): SetCommandFunc

---@alias SetCommandFunc fun(command: string | function): SetOptionsFunc

---@alias SetOptionsFunc fun(options: KeymapOpts | string): SetDescriptionFunc | nil

---@alias SetDescriptionFunc fun(description: string)
