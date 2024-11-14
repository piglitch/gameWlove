function love.load ()
  target = {}
  target.x = 300
  target.y = 300
  target.radius = 50
  target.speed = 50
  target.state = false

  score = 0
  timer = 0

  gameFont = love.graphics.newFont(40)
end

function love.update(dt)
    if target.state == true then
      -- score = score + 1
      target.x = target.x + target.speed * dt
      target.y = target.y + target.speed * dt
    end
end

function love.draw()
  function love.mousepressed(x, y, button, isTouch, presses)
    
    if button == 1  then
      mouseToTarget = distanceBw(x, y, target.x, target.y)
      if mouseToTarget < target.radius then
        target.state = not target.state
      end
    end
  end
  love.graphics.setColor(1, 0.2, 0.2)
  love.graphics.circle("fill", target.x, target.y, target.radius)

  love.graphics.setColor(1, 1, 1)
  love.graphics.setFont(gameFont)
  love.graphics.print(score, 0, 0)
end



function distanceBw(x1, y1, x2, y2)
  return math.sqrt((x2-x1)^2 + (y2-y1)^2)
end