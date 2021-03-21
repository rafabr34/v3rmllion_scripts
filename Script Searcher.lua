local MAX_DECOMPILE_ATTEMPTS = 5



local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Checking = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Checked = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Keywords = Instance.new("TextBox")
local Roundify = Instance.new("ImageLabel")
local Start = Instance.new("TextButton")
local Stop = Instance.new("TextButton")
local KillScript = Instance.new("TextButton")
local ClassNamesTable = Instance.new("TextBox")
local InitPath = Instance.new("TextBox")
local Percentage = Instance.new("TextLabel")



MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
MainFrame.BorderColor3 = Color3.fromRGB(92, 196, 209)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.0928381979, 0, 0.0736471936, 0)
MainFrame.Size = UDim2.new(0, 549, 0, 386)
MainFrame.ZIndex = 0

Checking.Name = "Checking"
Checking.Parent = MainFrame
Checking.Active = true
Checking.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Checking.BorderColor3 = Color3.fromRGB(92, 196, 209)
Checking.Position = UDim2.new(0, 0, 0.151057422, 0)
Checking.Size = UDim2.new(0, 270, 0, 250)
Checking.AutomaticCanvasSize = Enum.AutomaticSize.XY

UIListLayout.Parent = Checking
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Checked.Name = "Checked"
Checked.Parent = MainFrame
Checked.Active = true
Checked.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Checked.BorderColor3 = Color3.fromRGB(92, 196, 209)
Checked.Position = UDim2.new(0.523952067, 0, 0.151057422, 0)
Checked.Size = UDim2.new(0, 261, 0, 250)
Checked.AutomaticCanvasSize = Enum.AutomaticSize.XY

UIListLayout_2.Parent = Checked
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

Keywords.Name = "Keywords"
Keywords.Parent = MainFrame
Keywords.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Keywords.BorderColor3 = Color3.fromRGB(92, 196, 209)
Keywords.Position = UDim2.new(0, 0, 0.0284974091, 0)
Keywords.Size = UDim2.new(0, 270, 0, 43)
Keywords.Font = Enum.Font.Ubuntu
Keywords.PlaceholderColor3 = Color3.fromRGB(45, 98, 104)
Keywords.PlaceholderText = "Keywords(Separate Using \"<String Here>\",)"
Keywords.Text = "\"Kick\""
Keywords.TextColor3 = Color3.fromRGB(92, 196, 209)
Keywords.TextSize = 14.000
Keywords.TextWrapped = true
Keywords.ClearTextOnFocus = false


Roundify.Name = "Roundify"
Roundify.Parent = MainFrame
Roundify.AnchorPoint = Vector2.new(0.5, 0.5)
Roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Roundify.BackgroundTransparency = 1.000
Roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
Roundify.Size = UDim2.new(1, 10, 1, 10)
Roundify.ZIndex = -1
Roundify.Image = "rbxassetid://3570695787"
Roundify.ImageColor3 = Color3.fromRGB(29, 29, 29)
Roundify.ScaleType = Enum.ScaleType.Slice
Roundify.SliceCenter = Rect.new(100, 100, 100, 100)
Roundify.SliceScale = 0.050

Start.Name = "Start"
Start.Parent = MainFrame
Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Start.BackgroundTransparency = 1.000
Start.Position = UDim2.new(0.522768676, 0, 0.0595854931, 0)
Start.Size = UDim2.new(0, 20, 0, 20)
Start.Font = Enum.Font.SourceSans
Start.Text = "▶"
Start.TextColor3 = Color3.fromRGB(0, 255, 0)
Start.TextSize = 29.000

Stop.Name = "Stop"
Stop.Parent = MainFrame
Stop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Stop.BackgroundTransparency = 1.000
Stop.Position = UDim2.new(0.582877994, 0, 0.0595854931, 0)
Stop.Size = UDim2.new(0, 20, 0, 20)
Stop.Font = Enum.Font.SourceSans
Stop.Text = "▣"
Stop.TextColor3 = Color3.fromRGB(255, 0, 0)
Stop.TextSize = 29.000

KillScript.Name = "KillScript"
KillScript.Parent = MainFrame
KillScript.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KillScript.BackgroundTransparency = 1.000
KillScript.Position = UDim2.new(0.958105624, 0, 0, 0)
KillScript.Size = UDim2.new(0, 23, 0, 23)
KillScript.Font = Enum.Font.Cartoon
KillScript.Text = "X"
KillScript.TextColor3 = Color3.fromRGB(255, 0, 0)
KillScript.TextSize = 39.000

ClassNamesTable.Name = "ClassNamesTable"
ClassNamesTable.Parent = MainFrame
ClassNamesTable.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ClassNamesTable.BorderColor3 = Color3.fromRGB(92, 196, 209)
ClassNamesTable.Position = UDim2.new(0, 0, 0.816062152, 0)
ClassNamesTable.Size = UDim2.new(0, 270, 0, 42)
ClassNamesTable.Font = Enum.Font.Ubuntu
ClassNamesTable.PlaceholderColor3 = Color3.fromRGB(45, 98, 104)
ClassNamesTable.PlaceholderText = "ClassNames(Separate Using \"<String Here>\",)"
ClassNamesTable.Text = "\"LocalScript\""
ClassNamesTable.TextColor3 = Color3.fromRGB(92, 196, 209)
ClassNamesTable.TextSize = 14.000
ClassNamesTable.ClearTextOnFocus = false

InitPath.Name = "InitPath"
InitPath.Parent = MainFrame
InitPath.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InitPath.BorderColor3 = Color3.fromRGB(92, 196, 209)
InitPath.Position = UDim2.new(0.522768676, 0, 0.816062152, 0)
InitPath.Size = UDim2.new(0, 261, 0, 42)
InitPath.Font = Enum.Font.Ubuntu
InitPath.PlaceholderColor3 = Color3.fromRGB(45, 98, 104)
InitPath.PlaceholderText = "Initial Path"
InitPath.Text = "game"
InitPath.TextColor3 = Color3.fromRGB(92, 196, 209)
InitPath.TextSize = 14.000
InitPath.ClearTextOnFocus = false

Percentage.Name = "Percentage"
Percentage.Parent = MainFrame
Percentage.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Percentage.BackgroundTransparency = 1.000
Percentage.BorderColor3 = Color3.fromRGB(255, 255, 255)
Percentage.BorderSizePixel = 0
Percentage.Position = UDim2.new(0.31693989, 0, 0.953367889, 0)
Percentage.Size = UDim2.new(0, 200, 0, 18)
Percentage.Font = Enum.Font.Code
Percentage.Text = ""
Percentage.TextColor3 = Color3.fromRGB(92, 196, 209)
Percentage.TextSize = 27.000

function GetStarterPathFromText(Text)
local Item = nil
a,s = loadstring("return pcall(function() return {" .. Text  .. "} end)")()
if a == false then
warn("Table Error: "  .. s)
return nil
else
Item = s[1]
end
return Item
end

function GetNamesFromText(Text)
local Items = {}
a,s = loadstring("return pcall(function() return {" .. Text  .. "} end)")()
if a == false then
warn("Table Error: "  .. s)
else
for _,i in ipairs(s) do
table.insert(Items,i)
end
end
return Items
end

function FindAllKeyWords(String,KeyWord)
local TotalFound = 0
local PREV = 0
local LAST_PREV = 0

repeat
local Init,End = string.find(String,KeyWord,PREV,false)
if End ~= nil then
PREV = End
TotalFound = TotalFound + 1
end
if LAST_PREV == PREV and End == LAST_PREV then
PREV = PREV + 1
end


LAST_PREV = PREV
wait(0.00001)
until End == nil
return TotalFound
end


function FindWordOnScript(Script,KeyWords,MaxAttempts)
local Decompiled = nil
local CurrentAttempt = 0
local SucessDecompile = false
repeat
CurrentAttempt = CurrentAttempt + 1
local Sucess,FailType = pcall(function()
Decompiled = decompile(Script)
SucessDecompile = true
end)
if Sucess == false then
print("Failed To Decompile Reason: " .. FailType)
SucessDecompile = false
end
--wait()
until SucessDecompile == true or CurrentAttempt >= MaxAttempts
local TotalFound = 0
local ReturnTable = {}
for _,i in ipairs(KeyWords) do
    v,a = FindAllKeyWords(Decompiled,i)
    TotalFound = TotalFound + v
    if v >= 1 then
    table.insert(ReturnTable,{i,Script,v})
    end
print(i,TotalFound)

end
warn(TotalFound)
return TotalFound,Script,ReturnTable

end


function CalculatePercentage(CurrentValue,TargtedValue)
return CurrentValue / TargtedValue * 100
end


MainFrame.Draggable = true
MainFrame.Active = true
MainFrame.Selectable = true


KillScript.MouseButton1Click:Connect(function()
ScreenGui:Destroy()
end)

function Notify(Title,Text,Duration)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = tostring(Title);
	Text = tostring(Text);
	Duration = tonumber(Duration);
    
})
end

function NewLabel(Text,Color,Parent)
	local Label = Instance.new("TextLabel")
	Label.BackgroundTransparency = 1
	Label.Font = Enum.Font.Code
	Label.BorderSizePixel = 0
	Label.Size = UDim2.new(0, 255,0, 39)
	Label.Text = Text
	Label.TextScaled = false
    Label.TextWrapped = false
    Label.TextSize = 12
	Label.TextXAlignment = Enum.TextXAlignment.Left
	Label.TextColor3 = Color
	Label.Parent = Parent
    Label.AutomaticSize = Enum.AutomaticSize.X
	return Label
end

function GetPath(instance)
local MainString = "" .. instance.Name
local ToRead = instance
repeat 
MainString = ToRead.Parent.Name .. "." .. MainString
ToRead = ToRead.Parent
until ToRead.Parent == game or ToRead.Parent == nil
return MainString
end
local KeyWordsTable = {}


local RunningCycle = false
local MAIN_TABLE = {}
Start.MouseButton1Click:Connect(function()
if RunningCycle == false then
RunningCycle = true
local RequestedClassNames = GetNamesFromText(ClassNamesTable.Text)
local TLS = 0
for _,i in ipairs(GetStarterPathFromText(InitPath.Text):GetDescendants()) do
if table.find(RequestedClassNames,i.ClassName) then
TLS = TLS + 1
end
end
local Total = 0
local CheckedScripts = 0
local Scc,FT = pcall(function()
KeyWordsTable = GetNamesFromText(Keywords.Text)
for _,i in ipairs(GetStarterPathFromText(InitPath.Text):GetDescendants()) do
if table.find(RequestedClassNames,i.ClassName) then
    coroutine.resume(coroutine.create(function()
    local CheckingLabel = NewLabel(" Checking " .. i.ClassName .. " Path: " .. GetPath(i),Color3.fromRGB(255,255,255),Checking)
    table.insert(MAIN_TABLE,CheckingLabel)
    pcall(function()
    local Found,Script,Info = FindWordOnScript(i,KeyWordsTable,MaxAttempts)
        pcall(function()
        CheckingLabel.TextColor3 = Color3.fromRGB(0,100,100)
        end)
        CheckedScripts = CheckedScripts + 1
        
        Percentage.Text = tostring(math.round(CalculatePercentage(CheckedScripts,TLS) * 100)/100) .. "%" .. " Checked: " .. tostring(CheckedScripts) .. " Out Of: " .. tostring(TLS)
        if Found >= 1 then
        Total = Total + Found
        table.insert(MAIN_TABLE,NewLabel(" Found: " .. tostring(Found) .. " In Script: " .. GetPath(i),Color3.fromRGB(255,0,0),Checked))
        end
    end)

    end))
wait(0.0001)
end
end
table.insert(MAIN_TABLE,NewLabel(" Total Found: " .. tostring(Total),Color3.fromRGB(0,150,150),Checked))



end)
if Scc == false then
print(FT)
Notify("Unknown Error","Something Went Wrong, Open Console For Help",5)
end
RunningCycle = false
else
Notify("Stop Or Wait","Wait Or Cancel Current Cycle",5)
end
end)
Stop.MouseButton1Click:Connect(function()
for _,i in ipairs(MAIN_TABLE) do
pcall(function()
i:Destroy()
end)
end
end)
local Gui = nil
pcall(function()
Gui = get_hidden_gui()
end)
if Gui == nil then
warn("No Hidden Gui")
Gui = game:GetService("CoreGui")
end
ScreenGui.Parent = Gui
Notify("Loaded","Loaded Script Finder",5)
