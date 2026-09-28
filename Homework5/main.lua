-- Homework 4
-- Grace Granger

require("L5")

-- Function to set up sketch
function setup()
    -- Set window size and angle units
    size(700,600)
    angleMode(DEGREES)

    -- Set the program title
    windowTitle("Homework 5 Grace Granger")

    -- Describe the scene
    describe("Cityscape")
end

-- Draw loop
function draw()
    -- Background Color
    background(6,20,37)

    -- Cursor Location
    fill(255)
    text("X: "..mouseX.." Y: "..mouseY, mouseX+5, mouseY+30)
end