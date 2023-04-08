for _, v in pairs(game.Players.LocalPlayer:GetDescendants()) do
    pcall(function()
        v.Activated:Connect(function()
            print(v.Name, v:GetFullName())
        end)
    end)
end
