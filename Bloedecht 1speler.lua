local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")
local hitEvent = replicatedStorage:WaitForChild("ACS_Engine"):WaitForChild("Events"):WaitForChild("HitEffect")

while true do
    for _, player in pairs(players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head
            local args = {
                [1] = head.Position, -- Altijd up-to-date hoofdlocatie
                [2] = head, -- Doelwit: het hoofd van de speler
                [3] = (head.Position - game.Players.LocalPlayer.Character.Head.Position).unit, -- Richt altijd op het hoofd
                [4] = Enum.Material.Plastic,
                [5] = {
                    ["Ammo"] = 30,
                    ["ShootRate"] = 600,
                    ["IgnoreProtection"] = false,
                    ["EnableZeroing"] = true,
                    ["HeadDamage"] = {150, 150},
                    ["gunName"] = "Assault Rifle",
                    ["Zoom"] = 50,
                    ["MuzzleVelocity"] = 880,
                    ["Tracer"] = true,
                    ["BulletPenetration"] = 72,
                    ["TorsoDamage"] = {40, 60},
                    ["LimbDamage"] = {15, 20},
                    ["gunRecoil"] = {
                        ["gunRecoilUp"] = {20, 25},
                        ["gunRecoilLeft"] = {15, 20},
                        ["gunRecoilRight"] = {15, 20}
                    },
                    ["FireModes"] = {
                        ["Auto"] = true,
                        ["Semi"] = true
                    },
                    ["BulletType"] = "5.45×39mm",
                    ["BloodEffect"] = { 
                        ["Size"] = Vector3.new(5, 5, 5), -- GROTER BLOED
                        ["Enabled"] = true,
                        ["Color"] = Color3.new(0.094118, 0.509804, 0.788235), -- Rode bloedkleur
                        ["Lifetime"] = 2 -- Bloed blijft 2 seconden zichtbaar
                    }
                }
            }
            
            hitEvent:FireServer(unpack(args)) -- Vuur het event af
        end
    end
    wait(0.05) -- Elke 0.05 seconden alle spelers checken
end
