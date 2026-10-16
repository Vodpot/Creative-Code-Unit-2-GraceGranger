-- Grace Granger
-- Coding Challenge

require("L5")

function setup()
  size(600,600)
 -- user defined variables
angleMode(DEGREES)
end

function draw()
    background(255)
      noStroke()

  -- Pumpkin
   fill(67,97,12)
    rect(269,50,48,90)
    triangle(180,40,301,24,316,46)
    circle(300,300,400)
  fill(242,162,24)
    ellipse(250,300,300,400)
  fill(242,162,24)
    ellipse(350,300,300,400)
  fill(242,162,24)
    ellipse(300,300,200,400)
  fill(242,162,24)
    ellipse(300,300,100,400)
  fill(242,162,24)
    ellipse(300,300,50,400)
  fill(242,162,24)
--carving
fill(0)
  triangle(231,199,249,286,199,272)
  triangle(373,203,348,290,396,292)
fill(0)
  rect(184,367,40,60)
fill(0)
  rect(384,367,40,60)
fill(0)
  triangle(204,392,399,390,295,454)


  -- Knife on Mouse
  fill(120,120,120)
  triangle(mouseX-10,mouseY,mouseX-10, mouseY-70, mouseX+25, mouseY)
  arc(mouseX-17, mouseY-16, 88, 104,-80, 20, CHORD)
  strokeWeight(7)
  stroke(200,200,200)
  arc(mouseX-15, mouseY-16, 70, 90,-80, 20, OPEN)
  noStroke()
  fill(20,20,100)
  rect(mouseX-8, mouseY, 14, 35)
  circle(mouseX-1,mouseY+35,13)
  fill(120,120,120)
  stroke(0)
  strokeWeight(1)
  circle(mouseX-1, mouseY+5, 8)
  circle(mouseX-1,mouseY+17, 8)
  circle(mouseX-1, mouseY+29, 8)
end