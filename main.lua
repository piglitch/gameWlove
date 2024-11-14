function love.load ()
  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50

  score = 0
  timer = 0

  gameFont = love.graphics.newFont(40)
end

function love.update(dt)
  -- number = number + 1
end

function love.draw()


  love.graphics.setColor(1, 0.2, 0.2)
  love.graphics.circle("fill", target.x, target.y, target.radius)

  love.graphics.setColor(1, 1, 1)
  love.graphics.setFont(gameFont)
  love.graphics.print(score, 0, 0)
end

function love.mousepressed(x, y, button, isTouch, presses)
  if button == 1 then
    local mouseToTarget = distanceBw(x, y, target.x, target.y)
    if mouseToTarget < target.radius then
      score = score + 1
      target.x = 500
      targte.y = 400
    end
  end
end

function distanceBw(x1, y1, x2, y2)
  return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end