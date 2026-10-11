-- Grace Granger
-- Homework 7

require("L5")

function setup()
  size(700, 500)
  windowTitle("Grace Granger Homework 7")
  -- Location references for the 9 possible shape spots
  xList = {'55','170','290'}
  yList = {'75','255','420'}
  --Color List for the 'darts'
  xColor = {'0, 120, 191','255, 72, 176'}
  -- Define units
  angleMode(DEGREES)
  end


function draw()
  background(255)
  --Line thickness and Color
  strokeWeight(8)
  stroke(0)

-- Tic Tac Toe Grid
  for lineX = 115, 300, 115 do
    line(lineX, 5, lineX, 495)
  end

  for lineY = 155,500,200 do
    line(5, lineY, 345, lineY)
  end

-- Placing Os and Xs
  strokeWeight(10)
  noFill()
  -- Determines there is only 9 total shapes
    for x = 1, 3 do
    for y = 1, 3 do
  -- Determines Color of the shape that will be placed for each of the 9 locations
  stroke(random({'#0078BF','#F15060', '#FF48B0','#FF6C2F','#FFE800'}))
    shapeType = random{'circle', 'Ex'}
  -- Places Os
    if shapeType == 'circle' then
  -- Os Size
  circle(xList[x], yList[y], 60)
  --Places Xs
    elseif shapeType == 'Ex' then
  -- Xs size
  line (xList[x]-30,yList[y]-30,xList[x]+30,yList[y]+30)
  line (xList[x]-30,yList[y]+30,xList[x]+30,yList[y]-30)
    end
  end
    noLoop()
  end
  -- Right Side's DartBoard

  -- Rings
   strokeWeight(1)
   stroke(0)
   fill(0)
   circle(535,250,270)
   fill(64, 112, 96)
   circle(535,250,250)
   fill(172, 147, 110)
   circle(535,250,230)
   fill(255, 102, 94)
   circle(535,250,150)
   fill(172, 147, 110)
   circle(535,250,135)
   fill(64, 112, 96)
   circle(535,250,35)
   fill(255, 102, 94)
   circle(535,250,20)
   noFill()
   
    -- Centering Lines
  strokeWeight(5)
  stroke(0)
  
  
--Darts
for i = 1, 6 do
  strokeWeight(1)
  stroke(0)
    x = random(370,680)
    y = random(100,400)
    size = 10
    fill(random({'#FF48B0','#0078BF'}))
    circle(x, y, size)
  end

   -- Click to get a new iteration
  function mouseClicked ()
    redraw()
  end
  
end
