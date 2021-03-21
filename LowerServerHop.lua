local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")

local Cursor = ""
local Attempt = 0
local FoundServer = false
local PlaceId = game.PlaceId
local CurrentId  = game.JobId
local BestServerID = ""
local BestServerPlayerAmount = math.huge
pcall(function()
while true do
if FoundServer == true then break end
Attempt = Attempt + 1
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" .. Cursor))
Cursor = "&cursor=" .. ServersToTP.nextPageCursor
print("Attempt/CursorPage " .. tostring(Attempt) .. " Cursor: " .. tostring(ServersToTP.nextPageCursor))
for _, s in pairs(ServersToTP.data) do
    if s.playing < s.maxPlayers and s.playing <= BestServerPlayerAmount and s.id ~= CurrentId then
        warn("Found Server With " .. tostring(s.playing) .. " Players Playing ID: " .. tostring(s.id))
        BestServerPlayerAmount = s.playing
        BestServerID = s.id
        if BestServerPlayerAmount <= 1 then
        FoundServer = true
        end
    end
end
wait(0.1)
end
end)
TPService:TeleportToPlaceInstance(game.PlaceId, BestServerID)
