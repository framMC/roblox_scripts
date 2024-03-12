local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "LOG", Description = "ยินดีต้อนรับกลับ"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "LOG", Description = "เปิดใช้งานเพื่อลดการหน่วงของ Script"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 200, Type = "option"}
)
wait(1)
Notification:Notify(
    {Title = "LOG", Description = "Script โดย Team PWCSX"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
