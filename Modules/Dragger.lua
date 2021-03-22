local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local rs = game:GetService("RunService")
local uis = game:GetService("UserInputService")

local module = {}

function module.new(frame)
	frame.Active = true
	
	frame.InputBegan:Connect(function(event)
		if event.UserInputType == Enum.UserInputType.MouseButton1 then
			local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y)
			
			while frame and rs.RenderStepped:Wait() and uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
				frame.Position = UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y))
			end
		end
	end)
end

return module