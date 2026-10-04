local Services = setmetatable({}, {
    __index = function(self, Name)
        if Abysall.Environment.cloneref then
            return Abysall.Environment.cloneref(game:GetService(Name))
        else
            return game:GetService(Name)
        end
    end
})

local Bindable = Instance.new("BindableFunction")
Bindable.OnInvoke = function(Response)
    local Success, Result = pcall(function()
        toclipboard("я не хочу создавать дс канал")
    end)
    if not Success then
        Services.LocalPlayer:Kick("Не получилось загрузить")
    end
end

Services.StarterGui:SetCore("SendNotification", {
    Title = "Rubysall Hub",
    Text = "Скрипт предназначен только для Doors",
    Duration = 10,
    Callback = Bindable,
})
