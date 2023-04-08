local PARENT = workspace
local CLASS_NAME = "ModuleScript"
local SEARCH_INSIDE_CHILDREN = true

local searchData
if SEARCH_INSIDE_CHILDREN then
    searchData = PARENT:GetDescendants()
else
    searchData = PARENT:GetChildren()
end
for _, v in pairs(searchData) do
    if v:IsA(CLASS_NAME) then
        print(v.Name, v:GetFullName())
    end
end