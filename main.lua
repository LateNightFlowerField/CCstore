local barrels = {peripheral.find("minecraft:barrel")}
local items = {}
for index, barrel in pairs(barrels) do
    for slot, item in pairs(barrels.list()) do
        if not items[item.name] then
            items[item.name] = 0
        end
        items[item.name] = items[item.name] + item.count
    end
end
for index, titem in pairs(items) do
    print(index,titem)
end