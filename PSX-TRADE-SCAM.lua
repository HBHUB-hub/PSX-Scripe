local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/local-tap')))()
local Window = OrionLib:MakeWindow({Name = "HB HUB", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
    
})
_G.Key = "HGyg234Hub87je"
_G.KeyInput = "string"

function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "HB Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "HB Hub"})
 local Tab = Window:MakeTab({
        Name = "Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    Tab:AddParagraph("Made By HB_HUB")
    
     local Section = Tab:AddSection({
        Name = "Status"
    })
    
     Tab:AddLabel("Dupe: ✅")

    Tab:AddLabel("Trade Scam: ✅")
    
    Tab:AddLabel("Booth Scam: ✅")
    
     local Section = Tab:AddSection({
        Name = "Update Logs"
    })
    
     Tab:AddParagraph("[✨SHINY] UPDATE","Version 4.2")
     
     Tab:AddParagraph("Duping Is Fully Fixed and Optimized","")
     Tab:AddParagraph("Trading Scam Fully Fixed!","")
     Tab:AddParagraph("BUGS Fixed!","")
     Tab:AddParagraph("Crash Game Fixed!","")
     Tab:AddParagraph("Game Error 277 Fixed!","")
     
     
     local Tab = Window:MakeTab({
        Name = "Dupe",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
     
     local Section = Tab:AddSection({
        Name = "Dupe Section"
    })
    
    Tab:AddButton({
        Name = "(RISK) Start Dupe",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-main2"))()
          end    
    })
    
    local Section = Tab:AddSection({
        Name = "Dupe Options"
    })
    
    Tab:AddSlider({
        Name = "Select Pets Limits",
        Min = 0,
        Max = 20,
        Default = 1,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "PETS",
        Callback = function(Value)
            print(Value)
        end    
    })
    
    Tab:AddToggle({
        Name = "Dupe Only Equiped Pets",
        Default = false,
        Callback = function(Value)
            print(Value)
        end    
    })
     
     Tab:AddToggle({
        Name = "(RISK) Dupe Gems",
        Default = false,
        Callback = function(Value)
            print(Value)
        end    
    })
     
     Tab:AddTextbox({
        Name = "Rename all pets",
        Default = "Text Goes here",
        TextDisappear = true,
        Callback = function(Value)
            print(Value)
        end	  
    })
    
    local Tab = Window:MakeTab({
        Name = "Trade Scam",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Section = Tab:AddSection({
	Name = "ON/OFF"
    })
    
    Tab:AddButton({
        Name = "Trade Scam",
        Default = false,
        Callback = function(Value)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-main2"))()
        end    
    })
        
    local Section = Tab:AddSection({
        Name = "Trade Scam Options"
    })
    
     Tab:AddSlider({
        Name = "Lag Victim For",
        Min = 0,
        Max = 60,
        Default = 10,
        Color = Color3.fromRGB(255,255,255),
        Increment = 1,
        ValueName = "Seconds",
        Callback = function(Value)
            print(Value)
        end    
    })
    
    Tab:AddButton({
        Name = "LagTrade",
        Default = false,
        Callback = function(Value)
            print(Value)
        end    
    })
    
    Tab:AddParagraph("Bot-Trade","Coming Soon!")

    local Tab = Window:MakeTab({
        Name = "Booth Scam",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
      local Section = Tab:AddSection({
        Name = "Booth Section"
    })
    
    Tab:AddButton({
        Name = "Booth Scam",
        Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-main2"))()
          end
    })
    
      local Section = Tab:AddSection({
        Name = "Booth Options"
    })
    
    Tab:AddBind({
	Name = "KeyBind",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-main2"))()
	end    
})

    Tab:AddTextbox({
	Name = "Gems For use",
	Default = "Index:1b",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

    Tab:AddLabel("After you bought something from Booth, Click Booth Scam!")

      local Tab = Window:MakeTab({
        Name = "Others",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Section = Tab:AddSection({
        Name = "Server"
    })
    
     Tab:AddButton({
        Name = "Crash Server",
        Callback = function()
                  print("button pressed")
          end    
    })
    
    Tab:AddButton({
        Name = "Hop Servers",
        Callback = function()
                  print("button pressed")
          end    
    })
    
    local Section = Tab:AddSection({
        Name = "Other Scripts"
    })
    
    Tab:AddButton({
        Name = "Infinite Yields",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/HBHUB-hub/PSX-Scripe/main/dupe-main2'))()
          end    
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


    
    
     OrionLib:Init()
