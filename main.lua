local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")

local function preventAFK()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    print("Anti-AFK: Prevented kick")
end

Players.LocalPlayer.Idled:Connect(preventAFK)
print("Anti-AFK ativado!")

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sn-lider/FREE-LIBRARY-OP/refs/heads/main/main.lua", true))()

local player = game.Players.LocalPlayer
local displayName = player.DisplayName or player.Name

local window = library:AddWindow("CHILE HUB Free Edition  | - Hola " .. displayName, {
    main_color = Color3.fromRGB(122, 162, 26),
    min_size = Vector2.new(650, 870),
    can_resize = false,
})

local AutoFarm = window:AddTab("Farm")

mainTab:AddLabel("Anti AFK ACTIVADO por defecto ")

