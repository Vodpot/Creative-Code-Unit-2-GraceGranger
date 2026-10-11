-- Homework 4
-- Grace Granger

require("L5")

circleSize = 50
growing = true

function setup()
  size(300, 300)
end

function draw()
  background(220)
  circle(150, 150, circleSize)

  if growing then
    circleSize = circleSize + 1
  else
    circleSize = circleSize - 1
  end

  -- Switch direction at limits
  if circleSize > 200 then
    growing = false
  elseif circleSize < 50 then
    growing = true
  end
end