-- Vain immutable public entrypoint
-- The loader and all feature modules are fetched from one tested release commit.
local commit = "5f6d6eaa5623c1e66ea1e5aa4506da6a85e0d174"
shared.VainCommit = commit
local base = "https://raw.githubusercontent.com/9zjc/Vain/" .. commit .. "/"
local loader = game:HttpGet(base .. "loader.lua", true)
return loadstring(loader, "loader")()
