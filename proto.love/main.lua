function love.load()
  require('image.lua')
  require('scene.lua')
  require('object/simple_background.lua')
  require('object/simple_boundary.lua')
  require('object/cball.lua')

  frame = 1

  scene = NewScene(1920, 1080, 800, 600)
  scene.physics:setGravity(0, 100)

  bg = SimpleBackground("background.png")
  bo = SimpleBoundary(scene.physics, 0, 1074, 1919, 5)
  cb = CBall(scene.physics, 50, 50)

  table.insert(scene, bg)
  table.insert(scene, cb)

  scene.follow = cb
end

function love.update(dt)
  scene:update(dt)
  frame = frame + 1
end

function love.draw()
  scene:draw()
end

function love.keypressed(key, unicode)
  scene:keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
  scene:keyreleased(key, unicode)
end
