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
