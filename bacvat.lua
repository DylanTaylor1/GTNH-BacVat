local t = component.proxy(component.list('transposer')())
local r = component.proxy(component.list('redstone')())

-- Extract fluid (Hatch = Top, Output = Bottom)
local level = t.getTankLevel(1)
local max = t.getTankCapacity(1)
if level/max > 0.5 then
    t.transferFluid(1, 0, level - max / 2)
end

-- Turn on bacterial vats (wait 1 second)
r.setOutput({0, 15, 15, 15, 15})
for i = 1, 20, 1 do
    computer.pullSignal(0.05)
end
r.setOutput({0, 0, 0, 0, 0})

-- Wait for redstone timer to run again
r.setWakeThreshold(1)