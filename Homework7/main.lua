-- Grace Granger
-- Homework 6

require("L5")
circleSize = 50
growing = true
redValue = 255
blueValue = 0
greenValue = 128
redSpeed = 5
blueSpeed = 5
greenSpeed = 5
ball1 = 172.5
ball2 = 127.5
ball3 = 250
ball4 = 250
ball5 = 100
ball6 = 250
xSpeed = 1
ySpeed = .5

function setup()
  size(500, 500)
  windowTitle("Grace Granger Homework 6")
end

function draw()
  background(255, 255, 255)
  -- Size Changing Circle
  fill(255)
  stroke(0)
  strokeWeight(10)
  circle(250,250,circleSize)
  if growing then
    circleSize = circleSize+1
  else
    circleSize = circleSize-1
  end
  
  -- Limits to switch direction
  if
  circleSize > 300 then
    growing = false
  elseif
    circleSize < 100 then
      growing = true
    end

 -- Draw ball
  noStroke()
  fill(255,255,0)
  circle(ball1,ball2, 40)

  -- Move ball
  ball1 = ball1 + xSpeed
  ball2 = ball2 + ySpeed

  -- Bounce off left and right edges
  if ball1 < 0 or ball1> width then
    xSpeed = xSpeed * -1
  end

  -- Bounce off top and bottom edges
  if ball2 < 0 or ball2 > height then
    ySpeed = ySpeed * -1
  end

   -- Draw ball
  noStroke()
  fill(255,0,255)
  circle(ball3, ball4, 40)

  -- Move ball
  ball3 = ball3 + xSpeed
  ball4 = ball4 + ySpeed

  -- Bounce off left and right edges
  if ball3 < 0 or ball3> width then
    xSpeed = xSpeed * -1
  end

  -- Bounce off top and bottom edges
  if ball4 < 0 or ball4 > height then
    ySpeed = ySpeed * -1
  end

  noStroke()
  fill(0,255,255)
  circle(ball5, ball6, 40)

  -- Move ball
  ball5 = ball5 + xSpeed
  ball6 = ball6 + ySpeed

  -- Bounce off left and right edges
  if ball5 < 0 or ball5> width then
    xSpeed = xSpeed * -1
  end

  -- Bounce off top and bottom edges
  if ball6 < 0 or ball6 > height then
    ySpeed = ySpeed * -1
  end

    -- Color Changing center
  noStroke()
  fill(redValue, greenValue, blueValue)
  circle(250, 250, 100)
  

  redValue = redValue + redSpeed
  blueValue = blueValue + blueSpeed
  greenValue = greenValue + greenSpeed

  -- Red bounce between 0 and 255
  if redValue < 0 or redValue > 255 then
    redSpeed = redSpeed * -1
  end
  -- Blue bounce between 0 and 255
  if blueValue < 0 or blueValue > 255 then
    blueSpeed = blueSpeed * -1
  end
  -- Green bounce between 0 and 255
  if greenValue < 0 or greenValue > 255 then
    greenSpeed = greenSpeed * -1
  end


end