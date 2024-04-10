local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
    Name = "LOL HUB",
    Content = "Thank To Run LOL HUB And Pls Join Discord",
    Image = "rbxassetid://4483345998",
    Time = 5
})

local Window = OrionLib:MakeWindow({
    Name = "LOL HUB",
    HidePremium = true,
    SaveConfig = true,
    ConfigFolder = "LOLHUB"
})

local Main = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SectionMain = Main:AddSection({
    Name = "Main Script"
})

SectionMain:AddButton({
    Name = "Win Now!",
    Callback = function()
        local no = game.Players.LocalPlayer.LevelChange.Value
        no = no + 1
        if no < 33 then
            local args = {
                [1] = no,
                [2] = "\240\159\134\147\240\159\141\140"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Win"):FireServer(unpack(args))
        else
            print("End")
        end
    end
})

SectionMain:AddDropdown({
    Name = "Anti Death",
    Default = "Off",
    Options = {"On", "Off"},
    Callback = function(Value)
        print(Value)
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        if Value == "On" then
            ReplicatedStorage.Death:Destroy()
        elseif Value == "Off" then
            local Death = Instance.new("Remote")
            Death.Name = "Death"
            Death.Parent = ReplicatedStorage
        else
            OrionLib:MakeNotification({
                Name = "LOL HUB",
                Content = "Anti Death Error",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})

local Premium = Window:MakeTab({
    Name = "Premium",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = true
})

local PS = Premium:AddSection({
    Name = "Premium Script"
})

PS:AddDropdown({
    Name = "Anti Death",
    Default = "Off",
    Options = {"On", "Off"},
    Callback = function(Value)
        print(Value)
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        if Value == "On" then
            ReplicatedStorage.Death:Destroy()
        elseif Value == "Off" then
            local Death = Instance.new("Remote")
            Death.Name = "Death"
            Death.Parent = ReplicatedStorage
        else
            print("Error")
        end
    end
})

PS:AddButton({
    Name = "Win Speed Run",
    Callback = function()
        for i = 1, 32 do
            local no = game.Players.LocalPlayer.LevelChange.Value
            local non = game.Players.LocalPlayer.LevelChange.Value
            no = no + 1
            non = non + 2
            local args1 = {
                [1] = no,
                [2] = "\240\159\134\147\240\159\141\140"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Win"):FireServer(unpack(args1))

            local args2 = {
                [1] = non,
                [2] = "\240\159\134\147\240\159\141\140"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Win"):FireServer(unpack(args2))
            wait(0.1)
        end
    end
})
