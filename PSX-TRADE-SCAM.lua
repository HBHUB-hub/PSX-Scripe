local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/local-tap')))()
local Window = OrionLib:MakeWindow({Name = "HB HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "HB HUB"})
local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})
_G.Key = "28JEQ812HUB183"
_G.KeyInput = "string"

function MakeScriptHub()
    local Window = OrionLib:MakeWindow({Name = "HB Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "HB Hub"})
local Tab = Window:MakeTab({
    Name = "Trade Scam",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]
local Section = Tab:AddSection({
    Name = "Pet Simulator X Trade Scam! WORKING 2022!"
})

--[[
Name = <string> - The name of the section.
]]    
Tab:AddButton({
    Name = "Start Scam!",
    Callback = function()
              print("button pressed")
              loadstring(game:HttpGet("https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-all-main"))()
      end  


})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
end
Tab:AddTextbox({
    Name = "Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end      
})
Tab:AddButton({
    Name = "Check Key",
    Callback = function()
              if _G.KeyInput == _G.Key then
                  MakeScriptHub()
              end
      end    
})

HBHUB:Init()
