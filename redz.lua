loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/framMC/roblox_scripts/main/WelcomeUI.lua", true))()

local Players = game:GetService("Players")

Players.PlayerAdded:Connect(function(Player)
	task.wait(1)
	print(1)
	task.wait(2)
	print(2)
	task.wait(3)
	print(3)
	Player:Kick("ขอโทษ สคริปต์ถูกปิดใช้งานเเล้ว หากต้องการเปิดให้ติดต่อทางเฟสบุค ขอบคุณ")
end)
