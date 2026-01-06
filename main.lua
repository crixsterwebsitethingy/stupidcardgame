-- © 2026 crix_0z, All Rights Reserved.
-- This code is licensed under the MIT License.
local game = require("game")
local current_instance = game:new()
function love.load()
    local fontmenu = love.graphics.newFont("assets/fonts/Montserrat-Regular.ttf", 24)
    love.graphics.setFont(fontmenu)
end
function love.update(dt)

end

function love.draw()
    love.graphics.print("A Stupid Card Game", love.graphics.getWidth() / 2 - 120, 20, 0, 1, 1)
    love.graphics.setBackgroundColor(0, 0.4, 0.5)
    love.graphics.rectangle("fill", 20, 70 , love.graphics.getWidth() - 40 , 50)
end

function love.load()
   
end


