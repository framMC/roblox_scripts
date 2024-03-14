local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "LOG", Description = "Welcome back!!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "LOG", Description = "Automatic activation By pressing the option below."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 200, Type = "option"}
)
wait(1)
Notification:Notify(
    {Title = "LOG", Description = "Script Edit By pwcsx.fb"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "LOG", Description = "Thanks For Run Scripting"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
