-- Homework 4
-- Grace Granger

require("L5")

-- Function to set up sketch
function setup()
    -- Set window size and angle units
    size(600,500)
    angleMode(DEGREES)

    -- Set the program title
    windowTitle("Homework 4 Grace Granger")

    -- Describe the scene
    describe("Sound body of water")
end

-- Draw loop
function draw()

    -- No stroke
    noStroke()
    -- Background color
    background(152,226,235)
    
    -- Draw the base water
    fill(51,189,147)
    rect(0,200,600,300)

  -- Draw the dirt beneath grass
    fill(89,78,64)
    ellipse(0,308,250,55)

    fill(89,78,64)
    ellipse(550,360,400,155)

    fill(89,78,64)
    ellipse(560,460,100,155)

    fill (89,78,64)
    ellipse(0,250,300,40)

    fill(89,78,64)
    ellipse(540,232,400,38)

    -- Draw the grass in water
    fill(98,150,57)
    ellipse(0,300,250,50)

    fill (100,163,79)
    ellipse(550,350,400,150)

    fill (100,163,79)
    ellipse(560,450,100,150)

    fill(86,125,59)
    ellipse(0,245,300,35)

    fill(75,120,60)
    ellipse(540,230,400,35)

    -- Land on the horizon

    fill(65,120,90)
    triangle(0,200,0,160,150,200)
    
    fill(65,120,90)
    triangle(350,200,600,200,600,155)

    fill(65,120,90)
    triangle(350,200,500,200,425,145)

    fill(65,120,90)
    triangle(310,200,351,200,337,180)
    
    -- Sun
    fill(240,201,24)
    circle(200,100,50)
end