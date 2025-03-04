local player = game:GetService("Players"):WaitForChild("Thijsvi2007")
local replicatedStorage = game:GetService("ReplicatedStorage")
local hitEvent = replicatedStorage:WaitForChild("ACS_Engine"):WaitForChild("Events"):WaitForChild("HitEffect")

while true do
    if player and player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        local args = {
            [1] = head.Position, -- Altijd up-to-date hoofdlocatie
            [2] = head, -- Doelwit: het hoofd van de speler
            [3] = (head.Position - game.Players.LocalPlayer.Character.Head.Position).unit, -- Richt altijd op het hoofd
            [4] = Enum.Material.Plastic,
            [5] = {
                ["Ammo"] = 30,
                ["DamageFallOf"] = 1,
                ["ShootRate"] = 600,
                ["IgnoreProtection"] = false,
                ["EnableZeroing"] = true,
                ["MinRecoilPower"] = 0.5,
                ["Zoom"] = 50,
                ["MaxRecoilPower"] = 1.5,
                ["SightAtt"] = "",
                ["BulletPenetration"] = 72,
                ["CanCheckMag"] = true,
                ["MuzzleVelocity"] = 880,
                ["CanBreachDoor"] = false,
                ["AmmoInGun"] = 28,
                ["camRecoil"] = {
                    ["camRecoilUp"] = {12, 15},
                    ["camRecoilRight"] = {6, 9},
                    ["camRecoilLeft"] = {7, 10},
                    ["camRecoilTilt"] = {10, 15}
                },
                ["gunName"] = "Assault Rifle",
                ["HeadDamage"] = {150, 150},
                ["Zoom2"] = 60,
                ["MagCount"] = true,
                ["InfraRed"] = false,
                ["AimInaccuracyStepAmount"] = 0.75,
                ["CurrentZero"] = 0,
                ["RainbowMode"] = false,
                ["CrosshairOffset"] = 0,
                ["AimSpreadReduction"] = 1,
                ["ShootType"] = 3,
                ["Bullets"] = 1,
                ["EnableHUD"] = true,
                ["Tracer"] = true,
                ["LimbDamage"] = {15, 20},
                ["MaxStoredAmmo"] = 180,
                ["UnderBarrelAtt"] = "",
                ["TracerColor"] = Color3.new(1, 1, 1),
                ["TracerEveryXShots"] = 3,
                ["CanBreak"] = true,
                ["TorsoDamage"] = {40, 60},
                ["MinDamage"] = 5,
                ["gunRecoil"] = {
                    ["gunRecoilTilt"] = {20, 40},
                    ["gunRecoilUp"] = {20, 25},
                    ["gunRecoilLeft"] = {15, 20},
                    ["gunRecoilRight"] = {15, 20}
                },
                ["BurstShot"] = 3,
                ["RecoilPowerStepAmount"] = 0.1,
                ["Type"] = "Gun",
                ["FireModes"] = {
                    ["Auto"] = true,
                    ["ChangeFiremode"] = true,
                    ["Burst"] = false,
                    ["Semi"] = true
                },
                ["BulletType"] = "5.45×39mm",
                ["AimRecoilReduction"] = 4,
                ["IncludeChamberedBullet"] = true,
                ["canAim"] = true,
                ["MaxZero"] = 500,
                ["AimInaccuracyDecrease"] = 0.25,
                ["adsTime"] = 1,
                ["BulletFlare"] = false,
                ["StoredAmmo"] = 180,
                ["MinSpread"] = 0,
                ["WalkMult"] = 0,
                ["ZeroIncrement"] = 50,
                ["BulletDrop"] = 0.25,
                ["Jammed"] = false,
                ["RandomTracer"] = {
                    ["Enabled"] = false,
                    ["Chance"] = 25
                }
            }
        }

        hitEvent:FireServer(unpack(args)) -- Vuur het event af
    end
    wait(0.05) -- Update snel genoeg om altijd te volgen, maar niet te snel om lag te veroorzaken
end