function SimpleBoundary(world, x, y, w, h)
  local o = {x = x, y = y, w = w, h = h}
  o.body = love.physics.newBody(world, 0, 0, 0, 0)
  o.shape = love.physics.newPolygonShape(o.body, x, y, x+w, y, x+w, y+h, x, y+h)
  --o.draw = function (self, scene)
  --  love.graphics.setColor(0, 0, 0, 255*0.5)
  --  love.graphics.rectangle('fill', self.x-scene.camera.x, self.y-scene.camera.y, self.w, self.h)
  --end
  return o
end
