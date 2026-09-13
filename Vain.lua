-- Vain public entrypoint
-- Loads the versioned modular runtime used by the repository's current feature modules.
local base = "https://raw.githubusercontent.com/9zjc/Vain/main/"
local loader = game:HttpGet(base .. "loader.lua", true)
return loadstring(loader, "loader")()
