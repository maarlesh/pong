--library to reduce the pixel resolution to give retro feel--
push = require('push')

--getting the widht of the screen and setting--

WINDOW_WIDTH = 1280

--getting the height of the screen and setting--

WINDOW_HEIGHT = 720

--setting virtual height and widht -- 
VIRTUAL_WIDTH = 600
VIRTUAL_HEIGHT = 400

function love.load()
    push:setupScreen(VIRTUAL_WIDTH,VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

end

function love.keypressed(key)
    -- keys can be accessed by string name
    if key == 'escape' then
        -- function LÖVE gives us to terminate application
        love.event.quit()
    end
end


function love.draw()
    --start
    push:apply('start')
    love.graphics.printf('Hello Pong!', 0, VIRTUAL_HEIGHT / 2 - 6, VIRTUAL_WIDTH, 'center')
    --end
    push:apply('end')
end