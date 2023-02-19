local barrels = {peripheral.find("minecraft:barrel")}
local display = peripheral.find{"moniter"}
local items = {}

display.setTextScale(.5)

for index, barrel in pairs(barrels) do
    for slot, item in pairs(barrel.list()) do
        if not items[item.name] then
            items[item.name] = {0,barrel.getItemDetail(slot).displayName}
        end
        items[item.name] = {items[item.name][1] + item.count, items[item.name][2]}
    end
end

for index, titem in pairs(items) do
    textutils.pagedPrint(titem[2],titem[1])
end

display.setCursorPos(1,1)
display.write("Woah")