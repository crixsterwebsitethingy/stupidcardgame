function love.conf(t)
    t.window.resizable = false -- scaling issues with fullscreen even if using love.graphics.getWidth() and love.graphics.getHeight()
    t.window.vsync = true
    t.window.fullscreen = false
    t.window.title = "A Stupid Card Game v1.0 alpha"
    t.console = true
end