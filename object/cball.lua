function CBall(world, x, y)
  local o = {}

  o.body = love.physics.newBody(world, x, y, 10, 1)

  o.shape = love.physics.newCircleShape(o.body, 0, 0, 25)

  o.body:setMassFromShapes()

  o.draw = function (self, scene)
    local nx, ny = self.body:getWorldCenter()
    love.graphics.setColor(255, 255, 0, 255*0.70)
    love.graphics.circle("fill", (nx - scene.camera.x)*scene.camera.zoom, (ny - scene.camera.y)*scene.camera.zoom, 25*scene.camera.zoom, 40)

    love.graphics.setColor(0, 0, 100, 255)
    love.graphics.setLineWidth(5*scene.camera.zoom)
    love.graphics.circle("line", (nx - scene.camera.x)*scene.camera.zoom, (ny - scene.camera.y)*scene.camera.zoom, 25*scene.camera.zoom, 40)
  end

  o.update = function (self, scene, dt)
    local lvx, lvy = self.body:getLinearVelocity()
    if love.keyboard.isDown("right") then
      self.body:wakeUp()
      self.body:setLinearVelocity(lvx + 500*dt, lvy)
      lvx, lvy = self.body:getLinearVelocity()
    end
    if love.keyboard.isDown("left") then
      self.body:wakeUp()
      self.body:setLinearVelocity(lvx - 500*dt, lvy)
      lvx, lvy = self.body:getLinearVelocity()
    end
    if love.keyboard.isDown("up") then
      self.body:wakeUp()
      self.body:setLinearVelocity(lvx, lvy - 1000*dt)
      lvx, lvy = self.body:getLinearVelocity()
    end
  end

  o.keypressed = function (self, scene, key, unicode)
    if key == "down" then
      local lvx, lvy = self.body:getLinearVelocity()
      self.body:wakeUp()
      self.body:setLinearVelocity(lvx, 1000)
    end
  end

  o.getCenter = function (self)
    return self.body:getWorldCenter()
  end

  return o
end
