-- Gui to Lua
-- Version: 3.2

-- Instances: 


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIStroke = Instance.new('UIStroke')
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextButton_6 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties: 

ScreenGui.Parent = game.ReplicatedStorage
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.349641234, 0, 0.0657568201, 0)
Frame.Size = UDim2.new(0.349999994, 0, 0.560000002, 0)
Frame.Visible = true

UIStroke.Parent = Frame
UICorner.Parent = Frame

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 536, 0, 57)
TextButton.Font = Enum.Font.SourceSans
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.855193138, 0)
TextButton_2.Size = UDim2.new(0, 536, 0, 57)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

UICorner_3.Parent = TextButton_2

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 0.212690532, 0)
TextButton_3.Size = UDim2.new(0, 536, 0, 57)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

UICorner_4.Parent = TextButton_3

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0, 0, 0.642502666, 0)
TextButton_4.Size = UDim2.new(0, 536, 0, 57)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 14.000

UICorner_5.Parent = TextButton_4

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0, 0, 0.425381094, 0)
TextButton_5.Size = UDim2.new(0, 536, 0, 57)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

UICorner_6.Parent = TextButton_5

TextButton_6.Parent = ScreenGui
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.0874103084, 0, 0.127791569, 0)
TextButton_6.Size = UDim2.new(0, 67, 0, 50)
TextButton_6.Visible = true
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000

UICorner_7.Parent = TextButton_6

-- Scripts: 
local t = game:GetService('TweenService')
local ti = TweenInfo.new(2)
local Open = true

TextButton_6.Activated:Connect(function()
	if Open == false then
		Open = true
		for i, v in Frame:GetDescendants() do
			if v:IsA('TextButton') then
				t:Create(v, ti, {BackgroundTransparency = 0}):Play()
				t:Create(v, ti, {TextTransparency = 0}):Play()
			end
		end
		t:Create(Frame, ti, {Size = UDim2.new(0.35, 0, 0.56, 0)}):Play()
		wait()
		Frame.Visible = true
	else
		Open = not Open
		for i, v in Frame:GetDescendants() do
			if v:IsA('TextButton') then
				t:Create(v, ti, {BackgroundTransparency = 1}):Play()
				t:Create(v, ti, {TextTransparency = 1}):Play()
			end
		end
		t:Create(Frame, ti, {Size = UDim2.new(0, 0, 0, 0)}):Play()
		wait(2)
		Frame.Visible = false
	end
end)
