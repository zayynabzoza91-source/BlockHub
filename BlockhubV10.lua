-- BlockHub V10

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Side = Instance.new("Frame")
local Title = Instance.new("TextLabel")

local PlayerTab = Instance.new("TextButton")
local VisualTab = Instance.new("TextButton")
local MiscTab = Instance.new("TextButton")

local PlayerFrame = Instance.new("Frame")
local VisualFrame = Instance.new("Frame")
local MiscFrame = Instance.new("Frame")

local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Hide = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "BlockHubV10"

Main.Parent = ScreenGui
Main.Size = UDim2.new(0,460,0,300)
Main.Position = UDim2.new(0.3,0,0.3,0)
Main.BackgroundColor3 = Color3.fromRGB(20,20,20)
Main.Active = true
Main.Draggable = true

Side.Parent = Main
Side.Size = UDim2.new(0,140,1,0)
Side.BackgroundColor3 = Color3.fromRGB(30,30,30)

Title.Parent = Side
Title.Size = UDim2.new(1,0,0,50)
Title.Text = "BlockHub V10"
Title.BackgroundTransparency = 1
Title.TextColor3 = Color3.fromRGB(0,170,255)
Title.TextScaled = true

PlayerTab.Parent = Side
PlayerTab.Size = UDim2.new(1,0,0,40)
PlayerTab.Position = UDim2.new(0,0,0.25,0)
PlayerTab.Text = "Player"

VisualTab.Parent = Side
VisualTab.Size = UDim2.new(1,0,0,40)
VisualTab.Position = UDim2.new(0,0,0.4,0)
VisualTab.Text = "Visual"

MiscTab.Parent = Side
MiscTab.Size = UDim2.new(1,0,0,40)
MiscTab.Position = UDim2.new(0,0,0.55,0)
MiscTab.Text = "Misc"

PlayerFrame.Parent = Main
PlayerFrame.Position = UDim2.new(0.32,0,0,0)
PlayerFrame.Size = UDim2.new(0.68,0,1,0)
PlayerFrame.BackgroundTransparency = 1

VisualFrame.Parent = Main
VisualFrame.Position = UDim2.new(0.32,0,0,0)
VisualFrame.Size = UDim2.new(0.68,0,1,0)
VisualFrame.BackgroundTransparency = 1
VisualFrame.Visible = false

MiscFrame.Parent = Main
MiscFrame.Position = UDim2.new(0.32,0,0,0)
MiscFrame.Size = UDim2.new(0.68,0,1,0)
MiscFrame.BackgroundTransparency = 1
MiscFrame.Visible = false

Speed.Parent = PlayerFrame
Speed.Size = UDim2.new(0.8,0,0,40)
Speed.Position = UDim2.new(0.1,0,0.2,0)
Speed.Text = "Speed"

Jump.Parent = PlayerFrame
Jump.Size = UDim2.new(0.8,0,0,40)
Jump.Position = UDim2.new(0.1,0,0.4,0)
Jump.Text = "High Jump"

ESP.Parent = VisualFrame
ESP.Size = UDim2.new(0.8,0,0,40)
ESP.Position = UDim2.new(0.1,0,0.2,0)
ESP.Text = "ESP Players"

Hide.Parent = MiscFrame
Hide.Size = UDim2.new(0.8,0,0,40)
Hide.Position = UDim2.new(0.1,0,0.2,0)
Hide.Text = "Hide GUI"

PlayerTab.MouseButton1Click:Connect(function()
PlayerFrame.Visible = true
VisualFrame.Visible = false
MiscFrame.Visible = false
end)

VisualTab.MouseButton1Click:Connect(function()
PlayerFrame.Visible = false
VisualFrame.Visible = true
MiscFrame.Visible = false
end)

MiscTab.MouseButton1Click:Connect(function()
PlayerFrame.Visible = false
VisualFrame.Visible = false
MiscFrame.Visible = true
end)

Speed.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 60
end)

Jump.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 130
end)

ESP.MouseButton1Click:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer then
local h = Instance.new("Highlight")
h.Parent = v.Character
end
end
end)

Hide.MouseButton1Click:Connect(function()
Main.Visible = false
end)
