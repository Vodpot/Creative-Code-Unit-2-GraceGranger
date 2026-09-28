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

    -- Sunset
    fill(45,6,85)
    circle(width/2,height/2,height/.85)
    fill(100,10,170)
    circle(width/2,height/2,height/1)
    fill(145,45,250)
    circle(width/2,height/2,height/1.2)
    fill(210,15,165)
    circle(width/2,height/2,height/1.5)
    fill(255,50,70)
    circle(width/2,height/2,height/2)
    fill(255,115,80)
    circle(width/2,height/2,height/3)
    fill(255,170,65)
    circle(width/2,height/2,height/5.3)

    -- Buildings
    fill(255,50,70)
    quad(width*.2,height*.2,width*.3,height*.3, width*.3,height*.7,width*.2,height*.8)
end