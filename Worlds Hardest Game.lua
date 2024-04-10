local LOLGETKEY = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local LOLHUB = Instance.new("TextLabel")
local Key = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local Enter = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

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

-- Scripts:

local function ZQCAEBJ_fake_script() -- Enter.LocalScript 
	local script = Instance.new('LocalScript', Enter)

	script.Parent.MouseButton1Down:Connect(function()
		local Key = script.Parent.Parent.Key
		
		if Key == "CC20A1" then
			script.Parent.Parent.Key.Text = "|CC20A1|"
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load."
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load.."
			wait(0.3)
			script.Parent.Parent.Key.Text = "Load..."
			
			script.Parent.Parent["LOL HUB"]:Destroy()
			
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
	
			
		else
			script.Parent.Parent.Key.Text = "Key Error"
		end
	end)
end
coroutine.wrap(ZQCAEBJ_fake_script)()
