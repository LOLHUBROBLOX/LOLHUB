local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Players  = game:GetService("Players")
local Pls  = Players.LocalPlayer
local RunService = game:GetService("RunService")
local Window = OrionLib:MakeWindow({Name = "LOL HUB", HidePremium = true, SaveConfig = true, ConfigFolder = "LOL HUB"})

OrionLib:MakeNotification({
	Name = "LOL HUB",
	Content = "Hello"..Pls.Name,
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Main"
})

local function createESP(part)
    local espBox = Instance.new("BoxHandleAdornment")
    espBox.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
    espBox.Adornee = part
    espBox.AlwaysOnTop = true
    espBox.ZIndex = 5
    espBox.Color3 = Color3.new(0, 1, 0) -- Green color
    espBox.Transparency = 0.5
    espBox.Parent = part
end

local function removeESP(part)
    for _, descendant in ipairs(part:GetDescendants()) do
        if descendant:IsA("BoxHandleAdornment") then
            descendant:Destroy()
        end
    end
end

local function updateESP()
    for _, part in ipairs(game.Workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.Parent and part.Parent:IsA("Model") then
            if part:IsInViewport() then
                createESP(part)
            else
                removeESP(part)
            end
        end
    end
end

Tab:AddDropdown({
	Name = "Auto Data",
	Default = "on",
	Options = {"on", "off"},
	Callback = function(Value)
		whitle true do
            if Value == "on" then
                whitle true do
                local Players  = game:GetService("Players")
                local Pls  = Players.LocalPlayer
                local RunService = game:GetService("RunService")
            end
            elseif Value == "off"
            break
            end
	end    
})

Tab:AddTextbox({
    Name = "Look Player ESP", -- Corrected the typo
    Default = "Name",
    TextDisappear = true,
    Callback = function(Value)
        for _, player in ipairs(Players:GetPlayers()) do
            if player.Name:lower():find(Value:lower()) then
                createESP(player.Character) -- Corrected the function call
                return
            end
        end
        OrionLib:MakeNotification({
            Name = "LOL HUB",
            Content = "Player not found",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end
})

Tab:AddDropdown({
    Name = "Esp",
    Default = "Off",
    Options = {"Off", "On"},
    Callback = function(Value)
        if Value == "On" then
            RunService.RenderStepped:Connect(updateESP)
        elseif Value == "Off" then -- Corrected the syntax
            RunService.RenderStepped:Disconnect(updateESP)
            for _, part in ipairs(game.Workspace:GetDescendants()) do
                removeESP(part)
            end
        else
            OrionLib:MakeNotification({
                Name = "LOL HUB",
                Content = "Invalid option selected for ESP",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})
