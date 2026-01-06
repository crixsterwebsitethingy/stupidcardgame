-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = require("game")
local current_instance = game:new()
function love.load()
end
function love.update(dt)

end

function love.draw()
    local menufont = love.graphics.newFont("assets/fonts/Montserrat-Regular.ttf", 24)
    local menustartfont = love.graphics.newFont("assets/fonts/Montserrat-MediumItalic.ttf", 18)
    love.graphics.print("A Stupid Card Game", menufont, love.graphics.getWidth() / 2 - 120, 20, 0, 1, 1)
    love.graphics.setBackgroundColor(0, 0.4, 0.5)
    love.graphics.setColor(0, 0.3, 0.2)
    love.graphics.rectangle("fill", 20, 75 , love.graphics.getWidth() - 40 , 50)
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Press Enter to start a Game", menustartfont, love.graphics.getWidth() / 2 - 125, 85, 0, 1, 1)

end


