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

    -- Vanishing point Lines
    stroke(255)
    line(width/-3,height/-3,width,height)
    line(width/600,height,width,height/-600)

    fill(255,50,70)
    quad(width/-3,height/3,width/-2,height/2, width/-4,height/4,width/-3.5,height/3.5)
end