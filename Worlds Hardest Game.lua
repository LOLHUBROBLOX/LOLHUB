local LOLGETKEY = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LOLHUB = Instance.new("TextLabel")
local Key = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Enter = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local GameName = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local Game = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")

--Properties:

LOLGETKEY.Name = "LOLGETKEY"
LOLGETKEY.Parent = (game:GetService("CoreGui") or gethui())
LOLGETKEY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = LOLGETKEY
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.099496372, 0, 0.0990567505, 0)
Main.Size = UDim2.new(0.800000012, 0, 0.800000012, 0)

UICorner.Parent = Main

LOLHUB.Name = "LOL HUB"
LOLHUB.Parent = Main
LOLHUB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LOLHUB.BackgroundTransparency = 1.000
LOLHUB.BorderColor3 = Color3.fromRGB(0, 0, 0)
LOLHUB.BorderSizePixel = 0
LOLHUB.Position = UDim2.new(0.122795969, 0, 0.0383254699, 0)
LOLHUB.Size = UDim2.new(0.755289853, 0, 0.238561258, 0)
LOLHUB.Font = Enum.Font.Unknown
LOLHUB.Text = "LOL HUB | KEY"
LOLHUB.TextColor3 = Color3.fromRGB(255, 255, 255)
LOLHUB.TextScaled = true
LOLHUB.TextSize = 14.000
LOLHUB.TextWrapped = true

Key.Name = "Key"
Key.Parent = Main
Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Key.BorderColor3 = Color3.fromRGB(0, 0, 0)
Key.BorderSizePixel = 0
Key.Position = UDim2.new(0.122796066, 0, 0.274174511, 0)
Key.Size = UDim2.new(0.755290031, 0, 0.099999994, 0)
Key.Font = Enum.Font.SourceSans
Key.MultiLine = true
Key.Text = "You Key Here"
Key.TextColor3 = Color3.fromRGB(0, 0, 0)
Key.TextScaled = true
Key.TextSize = 14.000
Key.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 13)
UICorner_2.Parent = Key

Enter.Name = "Enter"
Enter.Parent = Main
Enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
Enter.BorderSizePixel = 0
Enter.Position = UDim2.new(0.357367754, 0, 0.451061308, 0)
Enter.Size = UDim2.new(0.284571737, 0, 0.099999994, 0)
Enter.Font = Enum.Font.Unknown
Enter.Text = "Check Key"
Enter.TextColor3 = Color3.fromRGB(0, 0, 0)
Enter.TextScaled = true
Enter.TextSize = 14.000
Enter.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 13)
UICorner_3.Parent = Enter

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.906800985, 0, 0.0383254699, 0)
Close.Size = UDim2.new(0.0676953346, 0, 0.129481167, 0)
Close.Font = Enum.Font.SourceSansBold
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 88)
UICorner_4.Parent = Close

GameName.Name = "GameName"
GameName.Parent = Main
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameName.BorderSizePixel = 0
GameName.Position = UDim2.new(0.188916758, 0, 0.728183925, 0)
GameName.Size = UDim2.new(0.619899273, 0, 0.099999994, 0)
GameName.Font = Enum.Font.SourceSans
GameName.Text = "Worlds Hardest Game"
GameName.TextColor3 = Color3.fromRGB(0, 0, 0)
GameName.TextScaled = true
GameName.TextSize = 14.000
GameName.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 21)
UICorner_5.Parent = GameName

Game.Name = "Game"
Game.Parent = Main
Game.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Game.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game.BorderSizePixel = 0
Game.Position = UDim2.new(0.395151138, 0, 0.601415098, 0)
Game.Size = UDim2.new(0.210579306, 0, 0.099999994, 0)
Game.Font = Enum.Font.SourceSansBold
Game.Text = "Game Name"
Game.TextColor3 = Color3.fromRGB(0, 0, 0)
Game.TextScaled = true
Game.TextSize = 14.000
Game.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = Game

-- Scripts:

local function NWVS_fake_script() -- Enter.LocalScript 
	local script = Instance.new('LocalScript', Enter)

	script.Parent.MouseButton1Down:Connect(function()
		local Key = script.Parent.Parent.Key.Text
		local player = game.Players
		if Key == "CC20A1" then
			script.Parent.Parent.Key.Text = "|CC20A1|"
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load."
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load.."
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load..."
			wait(0.3)
			script.Parent.Parent.Key.Text = "Scan Admin"
			wait(0.3)
			if player.KubaloPL or player.martix6m then
				game.Players.LocalPlayer:Kick("Found Admin")
			else
			script.Parent.Parent.Key.Text = "Make By LOL HUB"
			wait(1)
			script.Parent.Parent.Parent.Parent.LOLGETKEY:Destroy()
			
			local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
	
			OrionLib:MakeNotification({
				Name = "LOL HUB",
				Content = "Script Ver 0.0.5",
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
						ReplicatedStorage:WaitForChild("Death"):Destroy()
					elseif Value == "Off" then
						local Death = Instance.new("Remote")
						Death.Name = "Death"
						Death.Parent = game:GetService("ReplicatedStorage")
						OrionLib:MakeNotification({
							Name = "LOL HUB",
							Content = "Anti Death off",
							Image = "rbxassetid://4483345998",
							Time = 5
						})
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
			end
			
		else
			script.Parent.Parent.Key.Text = "Key Error"
		end
	end)
end
coroutine.wrap(NWVS_fake_script)()
local function SDJTCTX_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent.Parent.LOLGETKEY:Destroy()
	end)
end
coroutine.wrap(SDJTCTX_fake_script)()
local function OGKEG_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(OGKEG_fake_script)()
