-- Grace Granger
-- Homework 8

require("L5")

function setup()
  size(800, 400)
  windowTitle("Grace Granger Homework 8 - Haiku Generator")

  -- Starts the sketch
  function mousePressed()

  -- Defines Haiku line 1
  function writeLine1()
    fill(10,10,40)
    textSize(45)
    textAlign(LEFT,TOP)
    text(random({"The wind is blowing", "The air is pleasant", "Leaves are falling", "Snowflakes drift through clouds", "Rays from the Sun shine"}),30,30)
  end

  -- Defines Haiku line 2
   function writeLine2()
    textAlign (LEFT,CENTER)
    text(random({"The sky breathes out the fall air","Spring is upon the valley", "Heat permeates foliage", "Frost gathers along the ground", "Light travels to the tree leaves"}),30,180)
   end

  -- Defines Haiku line 3
   function writeLine3()
    textAlign (LEFT,BOTTOM)
    text(random({"Despite the dead life", "Even with the cold", "Summer is coming", "Life sleeps through the wait", "Time continues though"}),30,330)
  end
  
  -- Background's random and Array
   function chooseBackground()
    background(random({'#F54927', '#B3D7E6', '#B5EDB2', '#FFF959','#CFC5E8','#E6B17C','#9E1B1B','#859443'}))
    end
  end
  noLoop()
end

  -- Generates the Haiku
  function draw()
    chooseBackground()
    writeLine1()
    writeLine2()
    writeLine3()
  end
  -- Redraw on click
  function mouseClicked()
    redraw()
  end