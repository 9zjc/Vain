-- Vain bootstrap loader
-- Hosted source: https://github.com/9zjc/Vain
local base = "https://raw.githubusercontent.com/9zjc/Vain/main/"
local isfile = isfile or function(file)
    local ok, value = pcall(readfile, file)
    return ok and value ~= nil and value ~= ""
end
for _, folder in {"vain", "vain/games", "vain/profiles", "vain/assets", "vain/libraries", "vain/guis"} do
    if not isfolder(folder) then
        makefolder(folder)
    end
end
if not isfile("vain/profiles/commit.txt") then
    writefile("vain/profiles/commit.txt", "main")
end
local source = game:HttpGet(base .. "main.lua", true)
return loadstring(source, "main")()
