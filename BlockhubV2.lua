-- BlockHub V2 Stylish GUI

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Speed = Instance.new("TextButton")
local Stamina = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "BlockHubV2"

Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(25,25,25)
Main.Position = UDim2.new(0.35,0,0.3,0)
Main.Size = UDim2.new(0,300,0,220)

UICorner.Parent = Main

Title.Parent = Main
Title.Size = UDim2.new(1,0,0,50)
Title.BackgroundTransparency = 1
Title.Text = "BlockHub V2"
Title.TextColor3 = Color3.fromRGB(0,170,255)
Title.TextScaled = true

Speed.Parent = Main
Speed.Position = UDim2.new(0.1,0,0.3,0)
Speed.Size = UDim2.new(0.8,0,0,40)
Speed.Text = "Speed"
Speed.BackgroundColor3 = Color3.fromRGB(40,40,40)

Stamina.Parent = Main
Stamina.Position = UDim2.new(0.1,0,0.5,0)
Stamina.Size = UDim2.new(0.8,0,0,40)
Stamina.Text = "Infinite Stamina"
Stamina.BackgroundColor3 = Color3.fromRGB(40,40,40)

ESP.Parent = Main
ESP.Position = UDim2.new(0.1,0,0.7,0)
ESP.Size = UDim2.new(0.8,0,0,40)
ESP.Text = "ESP Players"
ESP.BackgroundColor3 = Color3.fromRGB(40,40,40)

Speed.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Stamina.MouseButton1Click:Connect(function()
while true do
task.wait()
pcall(function()
game.Players.LocalPlayer.Character.Stamina.Value = 999
end)
end
end)

ESP.MouseButton1Click:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v ~= game.Players.LocalPlayer then
local highlight = Instance.new("Highlight")
highlight.Parent = v.Character
end
end
end)
