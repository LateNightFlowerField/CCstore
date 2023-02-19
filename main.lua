local barrels = {peripheral.find("minecraft:barrel")}
local items = {}
for index, barrel in pairs(barrels) do
    for slot, item in pairs(barrel.list()) do
        if not items[item.name] then
            items[item.name] = {0,barrel.getItemDetail(slot).displayName}
        end
        items[item.name] = {items[item.name][1] + item.count, items[item.name][2]}
    end
end
for index, titem in pairs(items) do
    print(titem[2],titem[1])
end