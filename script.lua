repeat wait() until game:IsLoaded();
if game.PlaceId == 13772394625 or game.PlaceId == 15185247558 or game.PlaceId == 14915220621 or game.PlaceId == 14732610803 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/RevizxDD/kak/main/BladeBallScript.lua"))()
else
    game.Players.LocalPlayer:Kick("Map not found !")




wait(2)


  
    game:Shutdown()
end
