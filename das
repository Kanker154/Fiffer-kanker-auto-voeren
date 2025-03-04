_G.ssl = true -- // true/false hiero
        task.spawn(function()
            while G.ssl do
                for , player in next, game.Players:GetPlayers() do
                    game:GetService('ReplicatedStorage')['ACS_Engine'].Events.Whizz:FireServer(player)
                end
                task.wait(0.1)
            end
        end)