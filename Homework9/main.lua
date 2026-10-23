-- Grace Granger
-- Homework 8

require("L5")

-- Define all my potential colors and opacities
  
  -- Define Bright Yellow
  brightYellR = 255
  brightYellG = 255
  brightYellB = 0

  -- Define Soft Yellow
  softYellR = 252
  softYellG = 244
  softYellB = 82

  -- Define Gold Yellow
  goldYellR = 192
  goldYellG = 163
  goldYellB = 14

  -- Define Off White
  offWhiteR = 255
  offWhiteG = 244
  offWhiteB = 209

  -- Define potential Alpha values
  patternAlpha1 = 51
  patternAlpha2 = 102
  patternAlpha3 = 153
  patternAlpha4 = 204
  patternAlpha5 = 255

-- Define color array
  colorChoice = {'brightYellow','softYellow','goldYellow','offWhite'}

-- Define Alpha array
  shapeAlpha = {patternAlpha1,patternAlpha2,patternAlpha3,patternAlpha4,patternAlpha5}

  -- Define potential shapes
  starShape = {'asterik','diamond','circle','crescentMoon'}
  
function setup()
  size(1000, 800)
  windowTitle("Grace Granger Homework 9")

  -- Define angles
  angleMode(DEGREES)
end

function draw()
end

function mousePressed()
-- Load Background Image
  img = loadImage('Assets/LandscapeImage.png')
  -- Draw Image
  image(img,0, 0, 1000, 800)

  -- Defines where shapes can appear
  skyGen()


  -- Static Sketch
  noLoop()
end

function skyGen()
  for i = 1, 12, 1 do


      -- Define x and y with constraints to prevent stars from clipping into the mountains
      x= math.floor(random(125, 701))
        if x < 400 then
           y = math.floor(random(1,151))
        else
            y = math.floor(random(1,(((700-x)/700)*151)+25))
        end

    -- base color
    starColor1 = random(colorChoice)
    starColor2 = random(shapeAlpha)
    if starColor1 == "brightYellow" then
      fill(brightYellR, brightYellG, brightYellB,starColor2)
      stroke(brightYellR, brightYellG, brightYellB,starColor2)
    elseif starColor1 == "softYellow" then
      fill(softYellR,softYellG,softYellB,starColor2)
      stroke(softYellR,softYellG,softYellB,starColor2)
      elseif starColor1 == "goldYellow" then
      fill(goldYellR,goldYellG,goldYellB,starColor2)
      stroke(goldYellR,goldYellG,goldYellB,starColor2)
      elseif starColor1 == "offWhite" then
      fill(offWhiteR, offWhiteG, offWhiteB,starColor2)
      stroke(offWhiteR, offWhiteG, offWhiteB,starColor2)
    end

    --base shape
    skyShape = random(starShape)
    if skyShape == "asterik" then
      drawAsterik(x,y)
    elseif skyShape == "diamond" then
      drawDiamond(x,y)
    elseif skyShape == "circle" then
      drawCircle(x,y)
    elseif skyShape == "crescentMoon" then
      drawCrescent(x,y)
    else
    end
  end
end
-- Define Asterik Star shape
  function drawAsterik(x,y)
  push()
  translate(x,y)
  strokeWeight(5)
  line(25,0,25,50)
  line(0,25,50,25)
  line(45,45,5,5)
  line(5,45,45,5)
  pop()
  end

  -- Define Crescent shape
  function drawCrescent(x,y) 
    push()
    noFill()
    translate(x,y)
    strokeWeight(7)
    bezier(100, 20, 50, 10, 50, 90, 100, 80)
    bezier(100,20,80,30,80,70,100,80)
    noStroke()
    circle(100,20,1)
    circle(100,80,1)
    pop()
  end

  -- Define Diamond shape
  function drawDiamond(x,y)
    push()
    translate(x,y)
    quad(20,30,35,15,50,30,35,45)
    pop()
  end

  -- Define Circle shape so it can be moved
  function drawCircle(x,y)
    push()
    translate(x,y)
    circle(20,20,30)
    pop()
  end