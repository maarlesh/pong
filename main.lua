--library to reduce the pixel resolution to give retro feel--
push = require('push')

--getting the widht of the screen and setting--

WINDOW_WIDTH = 1280

--getting the height of the screen and setting--

WINDOW_HEIGHT = 720

--setting virtual height and widht -- 
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

function love.load()
    --love.graphics.setDefaultFilter('nearest', 'nearest')
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


    --applying color
    love.graphics.clear(40/255, 45/255, 52/255, 255/255)
    --game title bar
    love.graphics.printf('Hello Pong!', 0, 10, VIRTUAL_WIDTH, 'center')
    --paddle1
    love.graphics.rectangle('fill',5,30,5,20)
    --paddle2
    love.graphics.rectangle('fill',VIRTUAL_WIDTH-10,VIRTUAL_HEIGHT-40,5,20)
    --ball
    love.graphics.rectangle('fill',VIRTUAL_WIDTH/2-2,VIRTUAL_HEIGHT/2-2,4,4)
    
    
    --end
    push:apply('end')
end