function SimpleBoundary(world, x, y, w, h)
  local o = {}
  o.body = love.physics.newBody(world, 0, 0)
  o.shape = love.physics.newPolygonShape(o.body, x, y, x+w, y, x+w, y+w, x, y+w)
  return o
end
