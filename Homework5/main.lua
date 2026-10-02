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

    

    -- Vanishing point Lines
    stroke(255)
    --line(width/-3,height/-3,width,height)
    --line(width/600,height,width,height/-600)

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

    --Ground
    fill(6,10,25)
    rect(width*0,height*.5,width*1,height*1)

        -- Building sides aligned with horizon
    fill(210,15,165)
    rect(width*.05,height*.2, width*.15,height*.6)
    rect(width*.25,height*.3667,width*.113,height*.269)
    rect(width*.5643,height*.4347,width*.1,height*.13)
    rect(width*.757,height*.241,width*.15,height*.514)

    -- Building sides in perspective
    fill(255,50,70)
    quad(width*.2,height*.2,width*.3,height*.3,width*.3,height*.7,width*.2,height*.8)
    quad(width*.364,height*.635,width*.431,height*.5667,width*.431,height*.433, width*.364, height*.3667)
    quad(width*.537,height*.5375,width*.5643,height*.565,width*.5643,height*.435,width*.537,height*.4635)
    quad(width*.65,height*.649,width*.757,height*.755,width*.757,height*.24,width*.65,height*.35)

    --road
    fill(6,20,37)
    triangle(width*.2,height*1,width*.5,height*.5,width*.8,height*1)
    fill(255,170,65)
    triangle(width*.48,height*1,width*.5,height*.5,width*.52,height*1)

    -- Cursor Location
    fill(255)
    text("X: "..mouseX.." Y: "..mouseY, mouseX+5, mouseY+30)

end