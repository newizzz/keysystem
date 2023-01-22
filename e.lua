-- Gui to Lua
-- Version: 3.2

-- Instances:

local _7ziphub = Instance.new("ScreenGui")
local loader = Instance.new("Frame")
local corn = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local key = Instance.new("TextBox")
local corn_2 = Instance.new("UICorner")
local check = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

_7ziphub.Name = "7ziphub"
_7ziphub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
_7ziphub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

loader.Name = "loader"
loader.Parent = _7ziphub
loader.AnchorPoint = Vector2.new(0.5, 0.5)
loader.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
loader.Position = UDim2.new(0.5, 0, 0.5, 0)
loader.Size = UDim2.new(0, 441, 0, 258)

corn.CornerRadius = UDim.new(0, 20)
corn.Name = "corn"
corn.Parent = loader

title.Name = "title"
title.Parent = loader
title.AnchorPoint = Vector2.new(0.5, 0.5)
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0.498866171, 0, 0.321705401, 0)
title.Size = UDim2.new(0, 200, 0, 50)
title.Font = Enum.Font.Unknown
title.Text = "7zip key system"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 14.000

key.Name = "key"
key.Parent = loader
key.AnchorPoint = Vector2.new(0.5, 0.5)
key.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
key.Position = UDim2.new(0.4988662, 0, 0.643410861, 0)
key.Size = UDim2.new(0, 200, 0, 50)
key.Font = Enum.Font.Merriweather
key.PlaceholderText = "Enter key"
key.Text = ""
key.TextColor3 = Color3.fromRGB(255, 255, 255)
key.TextSize = 14.000

corn_2.Name = "corn"
corn_2.Parent = key

check.Name = "check"
check.Parent = loader
check.AnchorPoint = Vector2.new(0.5, 0.5)
check.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
check.Position = UDim2.new(0.49886623, 0, 0.847868204, 0)
check.Size = UDim2.new(0, 150, 0, 37)
check.Font = Enum.Font.Merriweather
check.Text = "Apply"
check.TextColor3 = Color3.fromRGB(255, 255, 255)
check.TextSize = 14.000

UICorner.Parent = check

-- Scripts:

local function FSLM_fake_script() -- _7ziphub.LocalScript 
	local script = Instance.new('LocalScript', _7ziphub)

	local ui = script.Parent.loader
	local key = "nballs"
	local uienter = ui.key
	ui.Position = UDim2.new(0.5,0,-5,0)
	--[[
	████████╗██╗....██╗███████╗███████╗███╗...██╗
	╚══██╔══╝██║....██║██╔════╝██╔════╝████╗..██║
	...██║...██║.█╗.██║█████╗..█████╗..██╔██╗.██║
	...██║...██║███╗██║██╔══╝..██╔══╝..██║╚██╗██║
	...██║...╚███╔███╔╝███████╗███████╗██║.╚████║
	...╚═╝....╚══╝╚══╝.╚══════╝╚══════╝╚═╝..╚═══╝
	.............................................
	]]
	local function enter()
		-- Get the TweenService service
		local TS = game:GetService("TweenService")
		local TweenTime = 3 -- Time to complete the tween
		local TweenPosition = UDim2.new(0.5,0,0.5,0) -- Tween to this position
		-- Creating a new Tween
		local Tweeb = TS:Create(script.Parent.loader, TweenInfo.new(TweenTime, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0), {Position = TweenPosition})
		-- Play the Tween
		Tweeb:Play()
	end
	local function exit()
		-- Get the TweenService service
		local TS = game:GetService("TweenService")
		local TweenTime = 3 -- Time to complete the tween
		local TweenPosition = UDim2.new(0.5,0,-5.0,0) -- Tween to this position
		-- Creating a new Tween
		local Tweeb = TS:Create(script.Parent.loader, TweenInfo.new(TweenTime, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0), {Position = TweenPosition})
		-- Play the Tween
		Tweeb:Play()
	end
	wait(1)
	enter()
	--[[
	██╗..██╗███████╗██╗...██╗......██████╗██╗..██╗███████╗.██████╗██╗..██╗
	██║.██╔╝██╔════╝╚██╗.██╔╝.....██╔════╝██║..██║██╔════╝██╔════╝██║.██╔╝
	█████╔╝.█████╗...╚████╔╝█████╗██║.....███████║█████╗..██║.....█████╔╝.
	██╔═██╗.██╔══╝....╚██╔╝.╚════╝██║.....██╔══██║██╔══╝..██║.....██╔═██╗.
	██║..██╗███████╗...██║........╚██████╗██║..██║███████╗╚██████╗██║..██╗
	╚═╝..╚═╝╚══════╝...╚═╝.........╚═════╝╚═╝..╚═╝╚══════╝.╚═════╝╚═╝..╚═╝
	......................................................................
	]]
	
	local function keyni()
		if script.Parent.loader.key.Text == key then
			print("key correct")
			exit()
		else
			print("key uncorrect")
		end	
	end
	script.Parent.loader.check.Activated:Connect(keyni)
end
coroutine.wrap(FSLM_fake_script)()
