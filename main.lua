-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.

local mods_present = true --FOR MODDERS, CHANGE VALUE TO TRUE 
local game = require("game")
local current_instance 
local date = os.date()
function love.load() 
    current_instance = game:new()
    if mods_present then
        current_instance:LoadMods("Johhnys_Jokers") -- ADD YOUR  MOD NAME 
    end
end
function love.update(dt)
    if current_instance.state == "r1" then
        current_instance:choosetarget(1)
    end
end
function love.keypressed(key)
    if key == "return" then
         current_instance:Start(date)
     end
end
function love.draw()
    local menufont = love.graphics.newFont("assets/fonts/Montserrat-Regular.ttf", 24)
    local menustartfont = love.graphics.newFont("assets/fonts/Montserrat-MediumItalic.ttf", 18)
    if current_instance.state == "mod_failed_to_load" then
        love.graphics.clear(1, 1, 1)
        love.graphics.print("Failed to load mods. Check console for errors.", menufont, love.graphics.getWidth() / 2 - 200, love.graphics.getHeight() / 2 - 20, 0, 1, 1)

    end
    if current_instance.state == "menu" then
        love.graphics.print("A Stupid Card Game", menufont, love.graphics.getWidth() / 2 - 120, 20, 0, 1, 1)
        love.graphics.setBackgroundColor(0, 0.4, 0.5)
        love.graphics.setColor(0, 0.3, 0.2)
        love.graphics.rectangle("fill", 20, 75 , love.graphics.getWidth() - 40 , 50)
        love.graphics.setColor(1, 1, 1)
        love.graphics.print("Press Enter to start a Game", menustartfont, love.graphics.getWidth() / 2 - 125, 85, 0, 1, 1)
    end
    if current_instance.state == "r1" then
        love.graphics.setColor(0.8, 0.792, 0.255)
        love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth() - 600, love.graphics.getHeight())
        love.graphics.setColor(0,0,0)
        love.graphics.print("ROUND 1", menustartfont, 50, 20, 0, 1, 1)
        love.graphics.print("Score: "..current_instance.score, menustartfont, 50, 50, 0, 1, 1)
        love.graphics.print("Target: "..current_instance.target, menustartfont, 50, 80, 0, 1, 1)
    end
    
end


