local HttpService, TPService = game:GetService("HttpService"), game:GetService("TeleportService")

local Cursor = ""
local Attempt = 0
local FoundServer = false
local PlaceId = game.PlaceId
local CurrentId  = game.JobId



while true do
if FoundServer == true then break end
Attempt = Attempt + 1
local ServersToTP = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" .. Cursor))
Cursor = "&cursor=" .. ServersToTP.nextPageCursor
print()
print("Attempt/CursorPage " .. tostring(Attempt) .. " Cursor: " .. tostring(ServersToTP.nextPageCursor))
for _, s in pairs(ServersToTP.data) do
    if s.playing < s.maxPlayers and s.id ~= CurrentId then
        warn("Found Server With " .. tostring(s.playing) .. " Players Playing ID: " .. tostring(s.id))
        FoundServer = true
        TPService:TeleportToPlaceInstance(game.PlaceId, s.id)
        break
    end
end
wait(0.1)
end