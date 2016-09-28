function timeDiff(t2,t1,script)
	local d1,d2,carry,diff = os.date('*t',t1),os.date('*t',t2),false,{}
	local colMax = {60,60,24,os.date('*t',os.time{year=d1.year,month=d1.month+1,day=0}).day,12}
	d2.hour = d2.hour - (d2.isdst and 1 or 0) + (d1.isdst and 1 or 0) -- handle dst
	for i,v in ipairs({'sec','min','hour','day','month','year'}) do
		diff[v] = d2[v] - d1[v] + (carry and -1 or 0)
		carry = diff[v] < 0
		if carry then diff[v] = diff[v] + colMax[i] end
	end
	for i,v in pairs(diff) do
		script[i] = v
	end
	return diff
end

function comma_value(n) -- credit http://richard.warburton.it
	local left,num,right = string.match(n,'^([^%d]*%d)(%d*)(.-)$')
	return left..(num:reverse():gsub('(%d%d%d)','%1,'):reverse())..right
end

function script_message(script,message,channel)
-------------------------------------------------------------------
-- Editable area
-------------------------------------------------------------------
	local colscript 	= "@R" --what color the script name will be
	local colsep		= "@W" --what color the seperator will be
	local colmessage	= "@C" --what color the message will be
-------------------------------------------------------------------
-- End edit area
-------------------------------------------------------------------
	local colend		= "@w"
	if channel == nil then
	scriptmessage.channel = "echo"
	else
	scriptmessage.channel = channel
	end
	scriptmessage.format = colscript .. script .. colsep .. ">" .. colmessage .. message .. colend
	return scriptmessage.channel .. " " .. scriptmessage.format
end

function round(num, idp)
    local mult = 10^(idp or 0)
    if num >= 0 then return math.floor(num * mult + 0.5) / mult
    else return math.ceil(num * mult - 0.5) / mult end
end

function rounddown(num)
	return math.floor(num-0.5)
end

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function stripcomma(C)
	comma = string.gsub(C,",","")
	return comma
end

function addtolist(set, key)
    set[key] = true
end

function removefromlist(set, key)
    set[key] = nil
end

function ismember(set, key)
    return key[set] ~= nil
end

--- Pads str to length len with char from right
string.lpad = function(str, len, char)
    if char == nil then char = ' ' end
    return str .. string.rep(char, len - #str)
end

--- Pads str to length len with char from left
string.rpad = function(str, len, char)
    if char == nil then char = ' ' end
    return string.rep(char, len - #str) .. str
end


-- Start function
function stringsplit(str, c)
a = string.find(str, c)
str = string.gsub(str, c, "", 1)
aCount = 0
start = 0
array = {}
last = 0
 
while a do
array[aCount] = string.sub(str, start, a - 1)
start = a
a = string.find(str, c)
 
str = string.gsub(str, c, "", 1)
aCount = aCount + 1
end
 
array[aCount] = string.sub(str, start) -- insert last segment
 
return array
end
-- End function

--[[
function ismember(i,t)
        for _, x in pairs(t) do
                if x == i then
                        return true
                end
        end
end
 
function isimember(i,t)
        for _, x in ipairs(t) do
                if x == i then
                        return true
                end
        end
end
--]]

function color_swap(chan,col1,col2,msg)
--

 colorswap={}
 function color_swap(col1,col2,msg)
  local color = col1
  local words = string.gmatch(msg, "%S+")
  local out = ""
  for i in words do
    for j=1,string.len(i) do
    out = out..color..string.sub(i,j,j)
    if color==col1 then color = col2 else color = col1 end
    end
    out = out.." "
  end
  colorswap.msg = out
  return out
  end
end

function string.explode ( str , seperator , plain )
assert ( type ( seperator ) == "string" and seperator ~= "" , "Invalid seperator (need string of length >= 1)" )
 
local t , nexti = { } , 1
local pos = 1
while true do
local st , sp = str:find ( seperator , pos , plain )
if not st then break end -- No more seperators found
 
if pos ~= st then
t [ nexti ] = str:sub ( pos , st - 1 ) -- Attach chars left of current divider
nexti = nexti + 1
end
pos = sp + 1 -- Jump past current divider
end
t [ nexti ] = str:sub ( pos ) -- Attach chars right of last divider
return t
end