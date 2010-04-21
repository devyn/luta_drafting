function love.load()
  require('lib/image.lua')
  require('lib/scene.lua')
  require('object/parallax_background.lua')
  require('object/simple_boundary.lua')
  require('object/cball.lua')

  frame = 1

  proto_scene = NewScene(2200, 1100, 800, 600)

  require('map/test.lua')(proto_scene)

  cb = CBall(proto_scene.physics, unpack(entry_point))
  table.insert(proto_scene, cb)

  proto_scene.follow = cb
end

function love.update(dt)
  proto_scene:update(dt)
  frame = frame + 1
end

function love.draw()
  proto_scene:draw()
end

function love.keypressed(key, unicode)
  proto_scene:keypressed(key, unicode)
end

function love.keyreleased(key, unicode)
  proto_scene:keyreleased(key, unicode)
end
