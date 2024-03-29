local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "บอท", Description = "ยินดีต้อนรับกลับ!!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 6, Type = "image"},
    {Image = "https://www.roblox.com/library/12017847837/logo-VernonX", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State) print(tostring(State)) end}
)
wait(1)
Notification:Notify(
    {Title = "บอท", Description = "เปิดเจ้านเจ้านี้เพิ่อจำกัด ทรัพยากร ช่วยเพิ่ม เฟรมเรท"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 200, Type = "option"}
)
wait(1)
Notification:Notify(
    {Title = "บอท", Description = "สคริปต์โดย Moonlight เเละ Worachet!!"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
wait(1)
Notification:Notify(
    {Title = "บอท", Description = "ขอให้สนุก"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=12017847837", ImageColor = Color3.fromRGB(255, 84, 84)}
)
