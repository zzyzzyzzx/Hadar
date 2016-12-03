function calcMaxStats (level, tier)
        local level = tonumber(level)
        local tier = tonumber(tier)
        local maxpossible = nil
        if (level <= 70 ) then
                maxpossible = (level + 25) + (tier * 2)
        elseif ((level > 70) and (level <= 155)) then
                maxpossible = 95 + ((level - 70) * 2) + (tier * 2)
        elseif ((level > 155) and (level <= 200)) then
                maxpossible = 265 + ((level - 155) * 3) + (tier * 2)
        elseif (level == 201) then
                maxpossible = 395
        end
        return maxpossible  
end -- calcMaxStats
 
function calcMaxCost (maxpossible, current)
        local maxcost = 0
        local currentcount = tonumber(current)
        local possible = tonumber(maxpossible)
        local cost = 0
        if (possible == currentcount) then
                return maxcost
        end
        while (currentcount < possible) do
                if ((currentcount <= 70 ) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 1
                end
                if ((currentcount >= 71) and (currentcount <= 90)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 2
                end
                if ((currentcount >= 91) and (currentcount <= 130) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 3
                end
                if ((currentcount >= 131) and (currentcount <= 170) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 4
                end
                if ((currentcount >= 171) and (currentcount <= 200) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 6
                end
                if ((currentcount >= 201) and (currentcount <= 224) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 9
                end
                if ((currentcount >= 225) and (currentcount <= 250) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 11
                end
                if ((currentcount >= 251) and (currentcount <= 275) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 15
                end
                if ((currentcount >= 276) and (currentcount <= 290) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 17
                end
                if ((currentcount >= 291) and (currentcount <= 300) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 20
                end
                if ((currentcount >= 301) and (currentcount <= 325) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 25
                end
                if ((currentcount >= 326) and (currentcount <= 350) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 35
                end
                if ((currentcount >= 351) and (currentcount <= 375) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 50
                end
                if ((currentcount >= 376) and (currentcount <= 400) and (currentcount <= possible)) then
                        currentcount = currentcount + 1
                        maxcost = maxcost + 60
                end
        end
        return maxcost  
end -- calcMaxCost
 
 
function maxVital (maxpossible, current)
        local maxcost = 0
        local currentcount = tonumber(current)
        local possible = tonumber(maxpossible)
        local cost = 0
        if (possible == currentcount) then
                return maxcost
        end
        while (currentcount < possible) do
                if ((currentcount <= 10000 ) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 2
                end
                if ((currentcount >= 10001) and (currentcount <= 14000)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 3
                end
                if ((currentcount >= 14001) and (currentcount <= 18000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 4
                end
                if ((currentcount >= 18001) and (currentcount <= 22000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 5
                end
                if ((currentcount >= 22001) and (currentcount <= 26000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 6
                end
                if ((currentcount >= 26001) and (currentcount <= 30000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 7
                end
                if ((currentcount >= 30001) and (currentcount <= 40000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 10
                end
                if ((currentcount >= 40001) and (currentcount <= 50000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 15
                end
                if ((currentcount >= 50001) and (currentcount <= 75000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 20
                end
                if ((currentcount >= 75001) and (currentcount <= 80000) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 25
                end
                if ((currentcount >= 80001) and (currentcount <= 99999) and (currentcount <= possible)) then
                        currentcount = currentcount + 10
                        maxcost = maxcost + 30
                end
        end
        return maxcost  
end -- maxVital