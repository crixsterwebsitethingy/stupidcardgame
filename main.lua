
function love.load()
    local fontmenu = love.graphics.newFont("assets/Montserrat-Regular.ttf", 24)
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


