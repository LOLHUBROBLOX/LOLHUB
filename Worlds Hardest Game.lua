local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "LOL HUB",
	LoadingTitle = "LOL HUB",
	LoadingSubtitle = "by User",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "LOL HUB",
		FileName = "LOL Hub"
	},
	KeySystem = false,
	KeySettings = {
		Title = "LOL HUB",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/Qm7EZvG2MX)",
		SaveKey = true,
		Key = "CC20A1"
	}
})

Rayfield:Notify("LOL HUB | Key", "Endter Data", 4483362458)

local Tab = Window:CreateTab("Main", 4483362458)

local Section = Tab:CreateSection("Main Script")

local Winnow = Tab:CreateButton({
	Name = "Win Now",
	Callback = function()
        --
            local no = game.Players.LocalPlayer.LevelChange.Value
            no = no + 1

            local args = {
                [1] = no,
                [2] = "\240\159\134\147\240\159\141\140"
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Win"):FireServer(unpack(args))
            wait(0.1)
        --
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Anit Death",
	Options = {"On","Off"},
	CurrentOption = "On",
	Flag = "Off", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
	  	  print(option)
           local ReplicatedStorage = game.ReplicatedStorage
          if option == "on" then
            ReplicatedStorage.Death:Destroy()
        elseif option == "Off" then
            local Death = Instance.new("Remote")
            Death.Name = "Death"
            Death.part = ReplicatedStorage
        else
            print("Error")
          end
	end,
})
