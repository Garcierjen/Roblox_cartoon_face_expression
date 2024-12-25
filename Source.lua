--[[
█▀▀ ▄▀█ █▀▀ █▀▀   █▀▀ █▀█ █▄░█ ▀█▀ █▀█ █▀█ █░░ █░░ █▀▀ █▀█   █▀▄▀█ ▄▀█ █ █▄░█
█▀░ █▀█ █▄▄ ██▄   █▄▄ █▄█ █░▀█ ░█░ █▀▄ █▄█ █▄▄ █▄▄ ██▄ █▀▄   █░▀░█ █▀█ █ █░▀█
--]]

--This script should be place in character with Face_display model in order for it to work properly.

--//////// Variable \\\\\\\\--
local Players = game:GetService("Players")
local Tween = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Character = script.Parent
local blur = script.Parent.Face_display.lol.el.Blur
local Mouth = script.Parent.Face_display.lol.el.M
local Eye_left = script.Parent.Face_display.lol.el.E_L
local Eye_right = script.Parent.Face_display.lol.el.E_R
local Brow = script.Parent.Face_display.lol.el.B
local humanoid = script.Parent.Humanoid
local LocalPlayer = Players.LocalPlayer
local Expression_Eye_left = {
	Idlehappy = "18690086812"
	,IdleUhh = "18690442211"
	,IdleHmm = "8817006328"
}
local Expression_Eye_right = {
	Idlehappy = "18690048652"
	,IdleUhh = "18690443962"
	,IdleHmm = "8817008325"
}
local Expression_Mouth = {
	Idlehappy = "18690471546"
	,IdleUhh = "2801759774"
	,IdleHmm = "2801767831"
}
local Expression_Brow = {
	Idlehappy = "18690369046"
	,IdleUhh = "2801697189"
	,IdleHmm = "2801687635"
}
local Expression_Brow_Closed = {
	All_Closed = "2801697189"
}
local Expression_Blur = {
	a1 = "18690730858",
	a2 = "3523974768",
	a3 = ""
}

local Variation = {
	idlehappym="2801759774"
}
--//////// Game play \\\\\\\\--

blur.Image = ("rbxassetid://"..18690730858)
Brow.Image = ("rbxassetid://"..Expression_Brow.Idlehappy)
Eye_left.Image = ("rbxassetid://"..Expression_Eye_left.Idlehappy)
Eye_right.Image = ("rbxassetid://"..Expression_Eye_right.Idlehappy)
Mouth.Image = ("rbxassetid://"..Expression_Mouth.Idlehappy)

--//////// Animation \\\\\\\\--
local function between_changeface(emoL,emoR,BrowC,mouthid,blurornot,browgone,BlurC) ---animation
	local db = true
	if db == true then
		Brow.Image = ("rbxassetid://"..Expression_Brow_Closed.All_Closed)
		Brow:TweenPosition(UDim2.new(0,-9,0,13),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_left:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_right:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_left:TweenPosition(UDim2.new(0,-6,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_right:TweenPosition(UDim2.new(0,-7,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_left.ImageTransparency = 1
		Eye_right.ImageTransparency = 1
		wait(0.3)
		if browgone == true then
			Brow.ImageTransparency = 1
		else
			Brow.ImageTransparency = 0
		end
		if blurornot == true then
			blur.ImageTransparency = 0
		else
			blur.ImageTransparency = 1
		end
		blur.Image = ("rbxassetid://"..BlurC)
		Brow.Image = ("rbxassetid://"..BrowC)
		Mouth.Image = ("rbxassetid://"..mouthid)
		Eye_left.Image = ("rbxassetid://"..emoL)
		Eye_right.Image = ("rbxassetid://"..emoR)
		Brow:TweenPosition(UDim2.new(0,-9,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_left:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_right:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_left:TweenPosition(UDim2.new(0,-6,0,-3),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		Eye_right:TweenPosition(UDim2.new(0,-7,0,-3 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
		wait(0.06)
		Eye_left.ImageTransparency = 0
		Eye_right.ImageTransparency = 0
		wait(math.random(4,5.3))
		db = true
	end
end

function idle()
	if math.random(1,3) == 2 then
		local db = true
		if db == true then
			blur.ImageTransparency = 1
			Brow.Image = ("rbxassetid://"..Expression_Brow_Closed.All_Closed)
			Brow:TweenPosition(UDim2.new(0,-9,0,13),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left.ImageTransparency = 1
			Eye_right.ImageTransparency = 1
			wait(0.3)
			blur.Image = ("rbxassetid://"..Expression_Blur.a2)
			Brow.Image = ("rbxassetid://"..Expression_Brow.Idlehappy)
			Mouth.Image = ("rbxassetid://"..Expression_Mouth.Idlehappy)
			Eye_left.Image = ("rbxassetid://"..8817031927)
			Eye_right.Image = ("rbxassetid://"..8817033346)
			Brow:TweenPosition(UDim2.new(0,-9,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,-3),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,-3 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			wait(0.04)
			Eye_left.ImageTransparency = 0
			Eye_right.ImageTransparency = 0
			wait(3)
			Brow.Image = ("rbxassetid://"..Expression_Brow_Closed.All_Closed)
			Brow:TweenPosition(UDim2.new(0,-9,0,13),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left.ImageTransparency = 1
			Eye_right.ImageTransparency = 1
			wait(0.3)
			blur.Image = ("rbxassetid://"..Expression_Blur.a2)
			Brow.Image = ("rbxassetid://"..Expression_Brow.Idlehappy)
			Mouth.Image = ("rbxassetid://"..Expression_Mouth.Idlehappy)
			Eye_left.Image = ("rbxassetid://"..8817040075)
			Eye_right.Image = ("rbxassetid://"..8817040737)
			Brow:TweenPosition(UDim2.new(0,-9,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,-3),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,-3 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			wait(0.06)
			Eye_left.ImageTransparency = 0
			Eye_right.ImageTransparency = 0
			wait(math.random(4,5.3))
			db = true
		end
	else
		between_changeface(Expression_Eye_left.Idlehappy,Expression_Eye_right.Idlehappy,Expression_Brow.Idlehappy,Expression_Mouth.Idlehappy,false,false,Expression_Blur.a2)--idle
	end
end

function sad()
	if math.random(1,5) == 2 then
		local db = true
		if db == true then
			blur.ImageTransparency = 1
			Brow.Image = ("rbxassetid://"..Expression_Brow_Closed.All_Closed)
			Brow:TweenPosition(UDim2.new(0,-9,0,13),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left.ImageTransparency = 1
			Eye_right.ImageTransparency = 1
			wait(0.3)
			blur.Image = ("rbxassetid://"..Expression_Blur.a2)
			Brow.Image = ("rbxassetid://"..Expression_Brow.IdleHmm)
			Mouth.Image = ("rbxassetid://"..Expression_Mouth.IdleHmm)
			Eye_left.Image = ("rbxassetid://"..8817035518)
			Eye_right.Image = ("rbxassetid://"..8817036674)
			Brow:TweenPosition(UDim2.new(0,-9,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,-3),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,-3 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			wait(0.06)
			Eye_left.ImageTransparency = 0
			Eye_right.ImageTransparency = 0
			wait(3)
			Brow.Image = ("rbxassetid://"..Expression_Brow_Closed.All_Closed)
			Brow:TweenPosition(UDim2.new(0,-9,0,13),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,12 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,24 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left.ImageTransparency = 1
			Eye_right.ImageTransparency = 1
			wait(0.3)
			blur.Image = ("rbxassetid://"..Expression_Blur.a2)
			Brow.Image = ("rbxassetid://"..Expression_Brow.IdleHmm)
			Mouth.Image = ("rbxassetid://"..Expression_Mouth.IdleHmm)
			Eye_left.Image = ("rbxassetid://"..8817042411)
			Eye_right.Image = ("rbxassetid://"..8817041858)
			Brow:TweenPosition(UDim2.new(0,-9,0,-2),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenSize(UDim2.new(0,75,0,67 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_left:TweenPosition(UDim2.new(0,-6,0,-3),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			Eye_right:TweenPosition(UDim2.new(0,-7,0,-3 ),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.2)
			wait(0.04)
			Eye_left.ImageTransparency = 0
			Eye_right.ImageTransparency = 0
			wait(math.random(4,5.3))
			db = true
		end
	else
		between_changeface(Expression_Eye_left.IdleHmm,Expression_Eye_right.IdleHmm,Expression_Brow.IdleHmm,Expression_Mouth.IdleHmm,false,false,Expression_Blur.a2)--sad
	end
end

function start()
	while task.wait() do
		idle()
	end
end

start()
