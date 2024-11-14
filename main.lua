function love.load ()
  number = 0
end

function love.update(dt)
  number = number + 1
end

function love.draw()
  love.graphics.rectangle("fill", 300, 200, 75, 60)
end