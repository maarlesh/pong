--getting the widht of the screen and setting--

WINDOW_WIDTH = 1280

--getting the height of the screen and setting--

WINDOW_HEIGHT = 720

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })

end

function love.draw()
    love.graphics.printf(
        "hello pong",
        0,
        WINDOW_HEIGHT/2 - 6,
        WINDOW_WIDTH,
        'center'
)
end