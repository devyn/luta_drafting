function love.load()
  require('lib/image.lua')
  require('lib/scene.lua')
  require('object/parallax_background.lua')
  require('object/simple_boundary.lua')
  require('object/cball.lua')

  frame = 1

  scene = require('map/test.lua')()

  cb = CBall(scene.physics, unpack(entry_point))
  table.insert(scene, cb)

  scene.follow = cb
end

function love.update(dt)
  scene:update(dt)
  frame = frame + 1
end

function love.draw()
  scene:draw()
  love.graphics.setColor(0,0,0)
  love.graphics.rectangle('fill', 18, 6, 50, 20)
  love.graphics.setColor(0,0,255)
  love.graphics.print("FPS "..love.timer.getFPS(), 20, 20)
end

function love.keypressed(key, unicode)
  scene:keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
  scene:keyreleased(key, unicode)
end
