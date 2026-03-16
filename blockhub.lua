print("BlockHub V1 Loaded")

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally-ui.lua"))()

local Window = Library:CreateWindow("BlockHub V1")

local Tab = Window:CreateFolder("Main")

Tab:Button("Speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Tab:Button("Jump", function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
end)

Tab:Button("Reset Speed", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)
