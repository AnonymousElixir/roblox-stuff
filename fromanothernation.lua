local version = "0.0.1"
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/alriceeeee/rayfield/refs/heads/main/sourcenocustomkey.lua",true))()
local execname = {
    exec = identifyexecutor()
}

print("Creating window...")
local Window = Rayfield:CreateWindow({
   Name = gamename .. " | Rayfield example window | v" .. version ,
   LoadingTitle = "From another nation",
   LoadingSubtitle = "by C9FZ",
   Theme = "Ocean",
   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Big Hub"
   }
})
print("Window created:", Window)

local Tab = Window:CreateTab("Unmute Mic", 4483362458)
local Section = Tab:CreateSection("Unmute Mic")

Tab:CreateLabel("Executor: "..execname.exec)

local Button = Tab:CreateButton({
   Name = "Unmute Mic",
   Callback = function()
    game:GetService("VoiceChatService"):joinVoice()
   end,
})
