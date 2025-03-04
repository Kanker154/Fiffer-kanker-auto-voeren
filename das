_G.ssl = true -- // true/false hiero
        task.spawn(function()
            while _G.ssl do
                for _, player in next, game.Players:GetPlayers() do
                    game:GetService('ReplicatedStorage')['ACS_Engine'].Events.Whizz:FireServer(player)
                end
                task.wait(0.1)
            end
        end)
